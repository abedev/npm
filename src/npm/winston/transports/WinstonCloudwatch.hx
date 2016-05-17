package npm.winston.transports;

import js.Error;

@:jsRequire("winston-cloudwatch")
extern class WinstonCloudwatch implements ITransport {
  public var name : String;
  public var level : String;
  public function log(level : String, msg : String, meta : Dynamic, callback : Error -> Bool -> Void) : Void;

  public function new(options : WinstonCloudwatchOptions) : Void;
}

typedef WinstonCloudwatchOptions = {
  logGroupName: String,
  logStreamName: String,
  ?level: String,
  ?jsonMessage : Bool,
  ?awsAccessKeyId: String,
  ?awsSecretKey: String,
  ?awsRegion: String,
  ?proxyServer: String,
  ?uploadRate: Int,
  ?errorHandler: Error -> Void,
  ?messageFormatter: WinstonCloudwatchItem -> Void
}

typedef WinstonCloudwatchItem = {
  level : String,
  message : String,
  ?meta : Dynamic
}
