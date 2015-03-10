package npm.socketio;

@:jsRequire("socket.io")
extern class Server {
  @:override(function(port : Int, ?options : ServerOptions) : Void {})
  @:override(function(srv : js.node.http.Server, ?options : ServerOptions) : Void {})
  @:selfCall function new(?options : ServerOptions) : Void;

  @:override(function() : Bool {})
  function serveClient(v : Bool) : Server;

  @:override(function() : String {})
  function path(v : String) : Server;

  @:override(function() : Adapter {})
  function adapter(v : Adapter) : Server;

  @:override(function() : String {})
  function origins(v : String) : Server;

  @:override(function(port : Int, ?opts : ServerOptions) : String {})
  function attach(srv : js.node.http.Server, ?opts : ServerOptions) : Server;

  @:override(function(port : Int, ?opts : ServerOptions) : String {})
  function listen(srv : js.node.http.Server, ?opts : ServerOptions) : Server;

  //Server#bind(srv:engine#Server):Server
  function onconnection(socket : Socket) : Server;
}

typedef ServerOptions = {
  ?serveClient : Bool,
  ?path : String
}