package npm.socketio;

@:jsRequire("socket.io")
extern class Server {
  @:overload(function(port : Int, ?options : ServerOptions) : Void {})
  @:overload(function(srv : js.node.http.Server, ?options : ServerOptions) : Void {})
  @:selfCall function new(?options : ServerOptions) : Void;

  @:overload(function() : Bool {})
  function serveClient(v : Bool) : Server;

  @:overload(function() : String {})
  function path(v : String) : Server;

  @:overload(function() : Adapter {})
  function adapter(v : Adapter) : Server;

  @:overload(function() : String {})
  function origins(v : String) : Server;

  @:overload(function(port : Int, ?opts : ServerOptions) : String {})
  function attach(srv : js.node.http.Server, ?opts : ServerOptions) : Server;

  @:overload(function(port : Int, ?opts : ServerOptions) : String {})
  function listen(srv : js.node.http.Server, ?opts : ServerOptions) : Server;

  //Server#bind(srv:engine#Server):Server
  function onconnection(socket : Socket) : Server;

  function of(nsp : String) : Namespace;

  function emit(name : String, data : {}) : Server; // TODO check return
}

typedef ServerOptions = {
  ?serveClient : Bool,
  ?path : String
}