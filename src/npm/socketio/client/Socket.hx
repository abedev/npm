package npm.socketio.client;

import js.node.events.EventEmitter;

@:native("io.Socket")
extern class Socket extends EventEmitter<Socket> {
  var id : String;

  function open() : Socket;
  function connect() : Socket;

  // function send (alias of emit)
  // function emit (see extends EventEmitter)
  // function on (extends EventEmitter)

  function compress(value : Bool) : Socket;

  function close() : Socket;
  function disconnect() : Socket;
}
