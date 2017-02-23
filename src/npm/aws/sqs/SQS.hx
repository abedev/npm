package npm.aws.sqs;

// AWS SQS extern
// http://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/SQS.html

import haxe.extern.EitherType;

import npm.common.Callback;

typedef SQSOptions = {
  ?params: {},
  ?endpoint: String,
  ?accessKeyId: String,
  ?secretAccessKey: String,
  //?sessionToken: Credentials,
  //?credentials: Credentials,
  //?credentialProvider: CredentialProviderChain,
  ?region: String,
  ?maxRetries: Int,
  ?maxRedirects: Int,
  ?sslEnabled: Bool,
  ?paramValidation: EitherType<Bool, { ?min: Bool, ?max: Bool, ?pattern: Bool, /*?enum: Bool*/ }>,
  ?computeChecksums: Bool,
  ?convertResponseTypes: Bool,
  ?correctClockSkew: Bool,
  ?s3ForcePathStyle: Bool,
  ?s3BucketEndpoint: Bool,
  ?s3DisableBodySigning: Bool,
  ?retryDelayOptions: {
    ?base: Int,
    ?customBackoff: Int -> Int
  },
  ?httpOptions: {
    ?proxy: String,
    ?agent: Dynamic, // http.Agent | https.Agent
    ?timeout: Int,
    ?xhrAsync: Bool,
    ?xhrWithCredentials: Bool
  },
  ?apiVersion: EitherType<String, Date>,
  ?apiVersions: Dynamic, // map<String, String|Date>
  ?logger: {
    ?write: haxe.Constraints.Function, // like a stream
    ?log: haxe.Constraints.Function, // like console.log
  },
  ?systemClockOffset: Float,
  ?signatureVersion: String, // v2, v3, or v4
  ?signatureCache: Bool
};

typedef AddPermissionParams = {
  QueueUrl: String,
  Label: String,
  AWSAccountIds: Array<String>,
  Actions: Array<String>,
};

typedef AddPermissionData = {
};

typedef ChangeMessageVisibilityParams = {
  QueueUrl: String,
  ReceiptHandle: String,
  VisibilityTimeout: Int,
};

typedef ChangeMessageVisibilityData = {
};

typedef CreateQueueParams = {
  QueueName: String,
  ?Attributes: {
    ?DelaySeconds: Int,
    ?MaximumMessageSize: Int, // bytes
    ?MessageRetentionPeriod: Int, // seconds
    ?Policy: Dynamic,
    ?ReceiveMessageWaitTimeSeconds: Int,
    ?RedrivePolicy: Dynamic,
    ?VisibilityTimeout: Int, // seconds
    ?FifoQueue: Bool,
    ?ContentBasedDeduplication: Dynamic
  }
};

typedef CreateQueueData = {
  QueueUrl: String
};

typedef DeleteMessageParams = {
  QueueUrl: String,
  ReceiptHandle: String
};

typedef DeleteMessageData = {
};

typedef DeleteQueueParams = {
  QueueUrl: String
};

typedef DeleteQueueData = {
};

typedef GetQueueUrlParams = {
  QueueName: String,
  QueueOwnerAWSAccountId: String
};

typedef GetQueueUrlData = {
  QueueUrl: String
};

typedef ListQueuesParams = {
  QueueNamePrefix: String
};

typedef ListQueuesData = {
  QueueUrls: Array<String>
};

typedef PurgeQueueParams = {
  QueueUrl: String
};
typedef PurgeQueueData = {
};

typedef ReceiveMessageParams = {
  QueueUrl: String,
  ?AttributeNames: Array<String>,
  ?MessageAttributeNames: Array<String>,
  ?MaxNumberOfMessages: Int,
  ?VisibilityTimeout: Int,
  ?WaitTimeSeconds: Int,
  ?ReceiveRequestAttemptId: String,
};

typedef Message = {
  MessageId: String,
  ReceiptHandle: String,
  MD5OfBody: String,
  Body: String,
  Attributes: Dynamic<String>,
  MD5OfMessageAttributes: String,
  MessageAttributes: Dynamic // map<map>
};

typedef ReceiveMessageData = {
  Messages: Array<Message>
};

typedef SendMessageParams = {
  QueueUrl: String,
  MessageBody: String,
  ?DelaySeconds: Int,
  ?MessageAttributes: Dynamic,
  ?MessageDeduplicationId: String,
  ?MessageGroupId: String
};

typedef SendMessageData = {
  MD5OfMessageBody: String,
  MD5OfMessageAttributes: String,
  MessageId: String,
  SequenceNumber: String
};

typedef SetQueueAttributesParams = {
  QueueUrl: String,
  Attributes: Dynamic,
};

typedef SetQueueAttributesData = {
};

@:jsRequire("aws-sdk", "SQS")
extern class SQS {
  function new(?options: SQSOptions);
  //public var endpoint : Endpoint;
  function addPermission(params: AddPermissionParams, ?callback: Callback<AddPermissionData>) : Request;
  function changeMessageVisibility(params: ChangeMessageVisibilityParams, ?callback: Callback<ChangeMessageVisibilityData>) : Request;
  //function changeMessageVisibilityBatch
  function createQueue(params: CreateQueueParams, ?callback: Callback<CreateQueueData>) : Request;
  function deleteMessage(params: DeleteMessageParams, ?callback: Callback<DeleteMessageData>) : Request; 
  //function deleteMessageBatch
  function deleteQueue(params: DeleteQueueParams, ?callback: Callback<DeleteQueueData>) : Request;
  //function getQueueAttributes(params: { /* TODO */ }, ?callback: Callback<{ }>) : Request;
  function getQueueUrl(params: GetQueueUrlParams, ?callback: Callback<GetQueueUrlData>) : Request;
  //function listDeadLetterSourceQueues
  function listQueues(?params: ListQueuesParams, ?callback: Callback<ListQueuesData>) : Request;
  function purgeQueue(params: PurgeQueueParams, ?callback: Callback<PurgeQueueData>) : Request;
  function receiveMessage(params: ReceiveMessageParams, ?callback: Callback<ReceiveMessageData>) : Request;
  //function removePermission
  function sendMessage(params: SendMessageParams, ?callback: Callback<SendMessageData>) : Request;
  //function sendMessageBatch
  function setQueueAttributes(params: SetQueueAttributesParams, ?callback: Callback<SetQueueAttributesData>) : Request;

}
