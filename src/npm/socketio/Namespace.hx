package npm.socketio;

import js.Error;
import js.node.events.EventEmitter;

extern class Namespace extends EventEmitter<Namespace> {
  var name(default, null) : String;
  var connected : Dynamic<Socket>;

  function clients(callback : Error -> Array<Client> -> Void) : Void;

  function use(middleware : SocketMiddleware) : Void; // TODO check return type

  var volatile : Namespace;
  var local : Namespace;
}
