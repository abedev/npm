package npm.winston.transports;

import js.Error;

@:jsRequire("winston", "transports.DailyRotateFile")
extern class DailyRotateFile implements ITransport {
  function new(options : DailyRotateFileOptions);
  public var name : String;
  public var level : String;
  public function log(level : String, msg : String, meta : Dynamic, callback : Error -> Bool -> Void) : Void;
}
