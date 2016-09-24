package npm.winston.transports;

import js.Error;

@:jsRequire("winston-aws-cloudwatch")
extern class WinstonAwsCloudwatch implements ITransport extends js.node.events.EventEmitter<WinstonAwsCloudwatch> {
  public var name : String;
  public var level : String;
  public function log(level : String, msg : String, meta : Dynamic, callback : Error -> Bool -> Void) : Void;

  public function new(options : WinstonAwsCloudwatchOptions) : Void;
}

typedef WinstonAwsCloudwatchOptions = {
  logGroupName: String,
  logStreamName: String,
  ?level : String,
  ?createLogGroup: Bool,
  ?createLogStream: Bool,
  awsConfig: {
    ?accessKeyId: String,
    ?secretAccessKey: String,
    region: String
  },
  ?submissionInterval : Int,
  ?batchSize : Int,
  ?formatLogItem: WinstonAwsCloudwatchItem -> Void
}

typedef WinstonAwsCloudwatchItem = {
  level : String,
  message : String,
  ?meta : Dynamic
}
