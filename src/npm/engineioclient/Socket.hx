package npm.engineioclient;

import npm.common.Callback;
import haxe.extern.EitherType;

extern class Socket extends Emitter<Socket> {
  var protocol(default, null) : Float;
  var binaryType(default, null) : String;

  inline function onOpen(callback : Callback0) : Socket
    return this.on("open", callback);
  inline function onMessage(callback : Callback<EitherType<String, js.html.ArrayBuffer>>) : Socket
    return this.on("message", callback);
  inline function onClose(callback : Callback0) : Socket
    return this.on("close", callback);
  inline function onError(callback : Callback0) : Socket
    return this.on("error", callback);
  inline function onFlush(callback : Callback0) : Socket
    return this.on("flush", callback);
  inline function onDrain(callback : Callback0) : Socket
    return this.on("drain", callback);
  inline function onUpgradeError(callback : Callback0) : Socket
    return this.on("upgradeError", callback);
  inline function onUpgrade(callback : Callback0) : Socket
    return this.on("upgrade", callback);
  inline function onPing(callback : Callback0) : Socket
    return this.on("ping", callback);
  inline function onPong(callback : Callback0) : Socket
    return this.on("pong", callback);

  @:overload(function(message : MessageType, options : SendOptions, callback : Callback0) : Socket {})
  @:overload(function(message : MessageType, callback : Callback0) : Socket {})
  @:overload(function(message : MessageType, options : SendOptions) : Socket {})
  function send(message : MessageType) : Socket;

  function close() : Socket;
}

#if norequire
typedef MessageType = EitherType<String, EitherType<js.node.Buffer, EitherType<js.html.ArrayBuffer, js.html.ArrayBufferView>>>;
#else
typedef MessageType = EitherType<String, EitherType<js.html.Blob, EitherType<js.html.ArrayBuffer, js.html.ArrayBufferView>>>;
#end
