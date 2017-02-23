package npmx.aws.sqs;

using thx.Arrays;
import thx.Error;
import thx.Nil;
import thx.promise.Promise;

import npm.AWS;
import npm.aws.sqs.SQS;

using npmx.common.Promisify;

class SQSX {
  public var options(default, null) : SQSOptions;
  public var sqs(default, null) : SQS;

  public var listQueues(default, null) : ?ListQueuesParams -> Promise<ListQueuesData>;
  public var createQueue(default, null) : CreateQueueParams -> Promise<CreateQueueData>;
  public var sendMessage(default, null) : SendMessageParams -> Promise<SendMessageData>;
  public var receiveMessage(default, null) : ReceiveMessageParams -> Promise<ReceiveMessageData>;
  public var deleteMessage(default, null) : DeleteMessageParams -> Promise<DeleteMessageData>;

  public function new(options : SQSOptions) {
    this.options = options;
    this.sqs = new SQS(options);

    this.listQueues = sqs.listQueues.promisify();
    this.createQueue = sqs.createQueue.promisify();
    this.sendMessage = sqs.sendMessage.promisify();
    this.receiveMessage = sqs.receiveMessage.promisify();
    this.deleteMessage = sqs.deleteMessage.promisify();
  }
}
