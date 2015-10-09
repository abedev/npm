package npm;

import npm.engineio.*;
import haxe.Constraints.Function;

@:jsRequire("engine.io")
extern class EngineIO {
  public static var protocol(default, null) : Float;
  public static var transports(default, null) : Dynamic<Function>;

  @:selfCall
  @:override(function(server : js.node.http.Server) : Server {})
  @:override(function(options : ServerOptions) : Server {})
  static function createServer() : Server;

  // TODO type callback better
  @:override(function(port : Int, callback : Function) : Void {})
  function listen(port : Int, options : ServerAttachOptions, callback : Function) : Server;

  @:override(function(server : js.node.http.Server) : Void {})
  function attach(server : js.node.http.Server, options : ServerAttachOptions) : Server;
}
