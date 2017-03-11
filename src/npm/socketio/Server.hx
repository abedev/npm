package npm.socketio;

import js.node.events.EventEmitter;
import js.node.http.Server as HttpServer;

@:jsRequire("socket.io")
extern class Server extends EventEmitter<Server> {
  @:overload(function(port : Int, ?options : ServerOptions) : Void {})
  @:overload(function(srv : HttpServer, ?options : ServerOptions) : Void {})
  @:selfCall function new(?options : ServerOptions) : Void;

  var sockets(default, null) : Namespace;

  @:overload(function() : Bool {})
  function serveClient(v : Bool) : Server;

  @:overload(function() : String {})
  function path(v : String) : Server;

  @:overload(function() : Adapter {})
  function adapter(v : Adapter) : Server;

  @:overload(function() : String {})
  function origins(v : String) : Server;

  @:overload(function(port : Int, ?opts : ServerOptions) : String {})
  function attach(srv : HttpServer, ?opts : ServerOptions) : Server;

  @:overload(function(port : Int, ?opts : ServerOptions) : String {})
  function listen(srv : HttpServer, ?opts : ServerOptions) : Server;

  //Server#bind(srv:engine#Server):Server

  function onconnection(socket : Socket) : Server;

  function of(nsp : String) : Namespace;

  @:native("in")
  function in_(room : String) : Namespace;

  function close(?cb : haxe.Constraints.Function) : Void;
}

typedef ServerOptions = {
  ?path : String,
  ?serveClient : Bool,
  ?adapter: Adapter,
  ?origins: String,
  ?allowRequest: haxe.Constraints.Function,
  //?parser: Parser
}
