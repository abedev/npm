package npm.socketio;

import js.Error;

extern class Socket {
  var rooms : Array<String>;
  var client : Client;
  var conn : Socket;
  var id : String;

  @:overload(function(name : String, a0 : Dynamic, a1 : Dynamic, a2 : Dynamic, a3 : Dynamic) : Socket {})
  @:overload(function(name : String, a0 : Dynamic, a1 : Dynamic, a2 : Dynamic) : Socket {})
  @:overload(function(name : String, a0 : Dynamic, a1 : Dynamic) : Socket {})
  @:overload(function(name : String, a0 : Dynamic) : Socket {})
  function emit(name : String) : Socket;

  function join(name : String, ?fn : Error -> Void) : Socket;
  function leave(name : String, ?fn : Error -> Void) : Socket;

  function in(room : String) : Socket;
  function to(room : String) : Socket;
}