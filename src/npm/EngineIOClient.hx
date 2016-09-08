package npm;

import npm.engineioclient.*;

#if norequire @:native("eio")
#else @:jsRequire("engine.io-client") #end
extern class EngineIOClient {
  @:overload(function(uri : String, options : SocketOptions) : Socket {})
  static function createSocket(uri : String) : Socket;
}
