package npm.ws;

import haxe.extern.EitherType;
import js.node.events.EventEmitter;
import npm.ws.WebSocketServerOptions;

@:jsRequire("ws", "Server")
extern class Server extends EventEmitter<Server> {
  public function new(opts: EitherType<WebSocketServerOptionsWithPort, EitherType<WebSocketServerOptionsWithServer, WebSocketServerOptionsWithNoServer>>, ?callback: Void -> Void): Void {}

  public var clients(default, null): Null<Dynamic>; // actually a js.Set?
  public function close(?callback: Void -> Void): Void {}
  // public function handleUpgrade(request, socket, head, callback): Void {}
  public function shouldHandle(request: js.node.http.IncomingMessage): Bool
}
