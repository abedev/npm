package aws.sqs;

using thx.Arrays;
import thx.Error;
import thx.Nil;
using thx.promise.Promise;

import npm.aws.sqs.SQS;
import npmx.aws.sqs.SQSX;
import npmx.aws.sqs.SQSXListener;

class IntTest {
  public static function main() {
    //testSimpleWorkflow();

    blastMessages(100)
      .success(function(_) {
        runListener();
      });
  }

  static function createSQSX() : SQSX {
    return new SQSX({
      region: "us-east-1"
    });
  }

  static function blastMessages(count : Int) : Promise<Nil> {
    var sqsx = createSQSX();
    return sqsx.createQueue({ QueueName: "andy-queue" })
      .flatMap(function(data : CreateQueueData) : Promise<Nil> {
        return getMessages(count).mapi(function(message : String, i : Int) : Promise<SendMessageData> {
          trace('sending message $i of $count');
          return sqsx.sendMessage({ QueueUrl: data.QueueUrl, MessageBody: message });
        })
        .sequence()
        .nil();
      });
  }

  static function runListener() {
    var sqsx = createSQSX();
    return sqsx.createQueue({ QueueName: "andy-queue" })
      .success(function(createQueueData : CreateQueueData) {
        var receiveMessageParams : ReceiveMessageParams = {
          MaxNumberOfMessages: 1,
          QueueUrl: createQueueData.QueueUrl,
          VisibilityTimeout: 60 * 5, // seconds before message is made visible in queue again
          WaitTimeSeconds: 3, // seconds to wait when polling
        };

        var listener = new SQSXListener(sqsx, receiveMessageParams, function(message : Message) : Promise<Nil> {
          var body = message.Body;
          trace('PROCESSING MESSAGE: ${formatMessage(message)}');
          return Promise.nil;
        });

        listener.subscribe(function(e : SQSXEvent) : Void {
          switch e {
            case Started : trace('started');
            case Stopped : trace('stopped');
            case ReceivingMessagePoll : trace('poll receive message(s)');
            case ReceiveMessageSuccess(messages) : trace('receive message success: ${messages.length} message(s)');
            case ReceiveMessageError(e) : trace('receive message error: ${e}');
            case ProcessingMessage(message) : trace('processing message: ${formatMessage(message)}');
            case ProcessMessageSuccess(message) : trace('process message success: ${formatMessage(message)}');
            case ProcessMessageError(message, e) : trace('process message error: ${formatMessage(message)} - ${e}');
            case DeletingMessage(message) : trace('deleting message: ${formatMessage(message)}');
            case DeleteMessageSuccess(message) : trace('delete message success: ${formatMessage(message)}');
            case DeleteMessageError(message, e) : trace('delete message error: ${formatMessage(message)} - ${e}');
          };
        });

        listener.start();

        /*
        thx.Timer.delay(function(){
          listener.stop();
          trace('done');
        }, 5000);
        */
      });
  }

  static function testSimpleWorkflow() {
    var sqsx = createSQSX();
    var queueName : String = "andy-queue";
    var queueUrl : String;

    sqsx.createQueue({
      QueueName: queueName
    })
    .flatMap(function(data : CreateQueueData) {
      trace('create queue: $data');
      queueUrl = data.QueueUrl;
      return sqsx.listQueues({ QueueNamePrefix: "andy-queue" });
    })
    .flatMap(function(data : ListQueuesData) {
      trace('list queues: $data');
      return sqsx.sendMessage({
        QueueUrl: queueUrl,
        MessageBody: getMessage()
      });
    })
    .flatMap(function(data : SendMessageData) {
      trace('send message: $data');
      return sqsx.receiveMessage({
        QueueUrl: queueUrl
      });
    })
    .success(function(data : ReceiveMessageData) {
      trace('receive message: $data');
      for (message in data.Messages) {
        trace(haxe.Json.stringify(haxe.Json.parse(message.Body), null, '  '));
      }
    })
    .failure(function(err : Error) {
      trace('error: $err');
    });
  }

  static function getMessage(?i : Int = 0) : String {
    return '$i: ${thx.DateTime.now()}';
  }

  static function getMessages(?count : Int = 100) : Array<String> {
    return thx.Ints.range(0, count).map(getMessage);
  }

  static function formatMessage(message : Message) : String {
    return 'id: ${message.MessageId}, body: ${message.Body}';
  }
}
