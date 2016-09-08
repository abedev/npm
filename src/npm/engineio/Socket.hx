package npm.engineio;

import npm.common.Callback;
import haxe.extern.EitherType;

@:jsRequire("engine.io", "Socket")
extern class Socket extends js.node.events.EventEmitter<Socket> {
  var id(default, null) : String;
  var server(default, null) : String;
  var request(default, null) : js.node.http.ClientRequest;
  var upgraded(default, null) : Bool;
  var readyState(default, null) : String;
  // TODO type appropriately
  var transport(default, null) : Dynamic;

  inline function onClose(callback : Callback2<String, Dynamic>) : Socket
    return this.on("close", callback);

  inline function onMessage(callback : Callback<EitherType<String, js.node.Buffer>>) : Socket
    return this.on("message", callback);

  inline function onError(callback : Callback0) : Socket
    return this.on("error", callback);

  // TODO is Array<Int> correct?
  inline function onFlush(callback : Callback<Array<Int>>) : Socket
    return this.on("flush", callback);

  inline function onDrain(callback : Callback0) : Socket
    return this.on("drain", callback);

  // TODO is Callback2<String, String> correct?
  inline function onPacket(callback : Callback2<String, String>) : Socket
    return this.on("packet", callback);

  // TODO is Callback2<String, String> correct?
  inline function onPacketCreate(callback : Callback2<String, String>) : Socket
    return this.on("packetCreate", callback);

  @:overload(function(message : MessageType, options : SendOptions, callback : Callback0) : Socket {})
  @:overload(function(message : MessageType, callback : Callback0) : Socket {})
  @:overload(function(message : MessageType, options : SendOptions) : Socket {})
  function send(message : MessageType) : Socket;

  function close() : Socket;
}

typedef MessageType = EitherType<String, EitherType<js.node.Buffer, EitherType<js.html.ArrayBuffer, js.html.ArrayBufferView>>>;
