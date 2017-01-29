package npm;

import haxe.extern.EitherType;
import js.node.events.EventEmitter;
import npm.ws.WebSocketClientOptions;
import npm.ws.WebSocketSendOptions;

@:jsRequire("ws")
extern class WebSocket extends EventEmitter<WebSocket> {
  public static var CONNECTING(default, never): Int;
  public static var OPEN(default, never): Int;
  public static var CLOSING(default, never): Int;
  public static var CLOSED(default, never): Int;

  public function new(address: String, ?protocols: EitherType<String, Array<String>>, ?options: WebSocketClientOptions): Void {}

  public var binaryType(default, null): String;
  public var bufferedAmount(default, null): Float; // TODO: int?
  public var bytesReceived(default, null): Float; // TODO: again, maybe int
  public var extensions: {}; // TODO: not sure if this can be written to
  public var protocol(default, null): String;
  public var protocolVersion(default, null): Int;
  public var readyState(default, null): Int;
  public var upgradeReq(default, null): js.node.http.IncomingMessage;
  public var url(default, null): String;

  @:overload(function(type: String, listener: js.html.EventListener): Void {})
  public function addEventListener(type: String, listener: haxe.Constraints.Function): Void {}

  public function close(?code: Int, ?reason: String): Void {}
  public function onclose(callback: Dynamic -> Void): Void {}
  public function onerror(callback: Dynamic -> Void): Void {}
  public function onmessage(callback: Dynamic -> Void): Void {}
  public function onopen(callback: Dynamic -> Void): Void {}
  public function pause(): Void {}
  public function ping(?data: Dynamic, ?mask: Bool, ?failSilently: Bool): Void {}
  public function pong(?data: Dynamic, ?mask: Bool, ?failSilently: Bool): Void {}

  @:overload(function(type: String, listener: js.html.EventListener): Void {})
  public function removeEventListener(type: String, listener: haxe.Constraints.Function): Void {}

  public function resume(): Void {}
  public function send(data: Dynamic, options: WebSocketSendOptions, callback: Void -> Void): Void {}
  public function terminate(): Void {}
}
