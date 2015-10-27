package npm.winston.transports;

import haxe.Constraints.Function;
import js.Error;

@:jsRequire("winston", "transports.Console")
extern class Console implements ITransport {
  public function new(options : TransportOptions) : Void;
  public var name : String;
  public var level : String;
  public function log(level : String, msg : String, meta : Dynamic, callback : Error -> Bool -> Void) : Void;
}
