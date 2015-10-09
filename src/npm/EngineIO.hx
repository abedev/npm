package npm;

import npm.engineio.Server;

@:jsRequire("engine.io")
extern class EngineIO {
  public static var protocol(default, null) : Float;

  @:selfCall
  @:override(function(server : js.node.http.Server) : Server {})
  @:override(function(options : ServerOptions) : Server {})
  static function createServer() : Server;
}
