package npm.winston.transports;

import haxe.Constraints.Function;

@:jsRequire("winston", "transports.Console")
extern class Console implements ITransport {
  public function new(options : TransportOptions) : Void;
}
