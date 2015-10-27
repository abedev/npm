package npm.winston.transports;

import js.Error;

@:jsRequire("winston", "transports.Http")
extern class Http {
  function new(options : HttpOptions);
  public var name : String;
  public var level : String;
  public function log(level : String, msg : String, meta : Dynamic, callback : Error -> Bool -> Void) : Void;
}
