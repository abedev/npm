package npmx.aws.sqs;

using thx.Arrays;
import thx.Error;
using thx.Functions;
import thx.Nil;
import thx.promise.Promise;

import npm.AWS;
import npm.aws.sqs.SQS;
import npmx.aws.sqs.SQSX;
import npmx.common.Events;

class SQSXListener {
  var sqsx(default, null) : SQSX;
  var receiveMessageParams(default, null) : ReceiveMessageParams;
  var _processMessage(default, null) : ProcessMessage;
  var running(default, null) : Bool = false;
  var events : Events<SQSXEvent>;

  public function new(sqsx : SQSX, receiveMessageParams: ReceiveMessageParams, processMessage : ProcessMessage) {
    this.sqsx = sqsx;
    this.receiveMessageParams = receiveMessageParams;
    this._processMessage = processMessage;
    this.running = false;
    this.events = new Events();
  }

  public function subscribe(f : SQSXEvent -> Void) : Void {
    events.subscribe(f);
  }

  public function unsubscribe(f : SQSXEvent -> Void) : Void {
    events.unsubscribe(f);
  }

  function emit(e : SQSXEvent) : Void {
    events.emit(e);
  }

  public function start() : Void {
    if (running) {
      return;
    }
    running = true;
    emit(Started);
    poll();
  }

  public function stop() {
    if (!running) {
      return;
    }
    running = false;
    emit(Stopped);
  }

  function poll() : Void {
    if (!running) {
      return;
    }
    receiveMessage().always(poll);
  }

  function receiveMessage() : Promise<Nil> {
    emit(ReceivingMessagePoll);
    return sqsx.receiveMessage(receiveMessageParams)
      .flatMapEither(onRecieveMessageSuccess, onReceiveMessageError);
  }

  function onRecieveMessageSuccess(data : ReceiveMessageData) : Promise<Nil> {
    var messages = data.Messages;
    emit(ReceiveMessageSuccess(messages));
    return if (messages.length == 0) {
      Promise.nil;
    } else {
      // TODO: could possibly process in "parallel"
      return messages.reduce(function(previous : Promise<Nil>, message : Message) : Promise<Nil> {
        return processMessage(message);
      }, Promise.value(thx.Nil.nil));
    }
  }

  function onReceiveMessageError(e : Error) : Promise<Nil> {
    emit(ReceiveMessageError(e));
    return Promise.nil;
  }

  function processMessage(message : Message) : Promise<Nil> {
    return (try {
      emit(ProcessingMessage(message));
      _processMessage(message);
    } catch (e : Dynamic) {
      Promise.error(thx.Error.fromDynamic(e));
    })
    .flatMapEither(function(_) {
      return onProcessMessageSuccess(message);
    }, function(e) {
      return onProcessMessageError(message, e);
    });
  }

  function onProcessMessageSuccess(message : Message) : Promise<Nil> {
    emit(ProcessMessageSuccess(message));
    return deleteMessage(message);
  }

  function onProcessMessageError(message : Message, e : Error) : Promise<Nil> {
    emit(ProcessMessageError(message, e));
    return Promise.nil;
  }

  function deleteMessage(message : Message) : Promise<Nil> {
    emit(DeletingMessage(message));
    return sqsx.deleteMessage({ QueueUrl: receiveMessageParams.QueueUrl, ReceiptHandle: message.ReceiptHandle })
      .flatMapEither(function(_) {
        return onDeleteMessageSuccess(message);
      }, function(e : Error) {
        return onDeleteMessageError(message, e);
      });
  }

  function onDeleteMessageSuccess(message : Message) : Promise<Nil> {
    emit(DeleteMessageSuccess(message));
    return Promise.nil;
  }

  function onDeleteMessageError(message : Message, e : Error) : Promise<Nil> {
    emit(DeleteMessageError(message, e));
    return Promise.nil;
  }
}

enum SQSXEvent {
  Started;
  Stopped;
  ReceivingMessagePoll;
  ReceiveMessageSuccess(messages : Array<Message>);
  ReceiveMessageError(e : Error);
  ProcessingMessage(message : Message);
  ProcessMessageSuccess(message : Message);
  ProcessMessageError(message : Message, e : Error);
  DeletingMessage(message : Message);
  DeleteMessageSuccess(message : Message);
  DeleteMessageError(message : Message, e : Error);
}

typedef ProcessMessage = Message -> Promise<Nil>;
