package npm;

import npm.engineio.*;
import haxe.Constraints.Function;

@:jsRequire("engine.io")
extern class EngineIO {
  // TODO does selfCall work here?
  @:selfCall
  static var engine(default, null) : Engine;
  static var protocol(default, null) : Float;
  static var transports(default, null) : Dynamic<Function>;

  @:selfCall
  @:override(function(server : js.node.http.Server) : Server {})
  @:override(function(options : ServerOptions) : Server {})
  static function createServer() : Server;

  // TODO type callback better
  @:override(function(port : Int, callback : Function) : Void {})
  static function listen(port : Int, options : ServerAttachOptions, callback : Function) : Server;

  @:override(function(server : js.node.http.Server) : Void {})
  static function attach(server : js.node.http.Server, options : ServerAttachOptions) : Server;
}
