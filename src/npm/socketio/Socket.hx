package npm.socketio;

import js.Error;
import js.node.events.EventEmitter;

extern class Socket extends EventEmitter<Socket> {
  var id : String;
  var rooms : Dynamic<String>;
  var client : Client;
  var conn : Socket;
  var request : Request;

  function use(fn : PacketMiddleware) : Void;

  // function send (alias for emit)
  // function emit (incompletely handled by extends EventEmitter (no ack))
  // function on (extends EventEmitter)

  @:overload(function(rooms : Array<String>, ?fn : Null<Error> -> Void) : {} {})
  function join(room : String, ?fn : Null<Error> -> Void) : Socket;

  function leave(room : String, ?fn : Null<Error> -> Void) : Socket;

  //function in(room : String) : Socket; // alias of "to"
  function to(room : String) : Socket;

  function compress(value : Bool) : Socket;

  function disconnect(close : Bool) : Socket;

  var broadcast : Socket;
  var volatile : Socket;
}
