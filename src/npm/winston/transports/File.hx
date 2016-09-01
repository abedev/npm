package npm.winston.transports;

import js.Error;

@:jsRequire("winston", "transports.File")
extern class File implements ITransport {
  public function new(options : FileOptions);
  public var name : String;
  public var level : String;
  public function log(level : String, msg : String, meta : Dynamic, callback : Error -> Bool -> Void) : Void;
}
