package npm.socketio;

import js.Error;

extern class Adapter {
  var nsp : Namespace;
  var rooms : Dynamic<Bool>;
  var sids : Dynamic<Bool>;
  //var encoder : Encoder;

  function add(id : String, room : String, ?fn : Error -> Void ) : Void;
  function del(id : String, room : String, ?fn : Error -> Void ) : Void;
  function delAll(id : String, ?fn : Error -> Void ) : Void;
  // TODO type arguments
  function broadcast(packet : Dynamic, opts : Dynamic) : Void;

  @:overload(function(rooms : String, fn : Error -> Void) : Void {})
  @:overload(function(rooms : String) : Void {})
  @:overload(function(fn : Error -> Void) : Void {})
  function clients() : Void;
}