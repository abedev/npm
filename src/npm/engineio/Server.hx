package npm.engineio;

import npm.common.Callback;

@:jsRequire("engine.io", "Server")
extern class Server extends js.node.events.EventEmitter<Server> {
  // TODO type more properly
  var clients(default, null) : Dynamic<Dynamic>;
  var clientsCount(default, null) : Int;

  function new(?options : ServerOptions) : Void;

  inline function onConnection(callback : Callback<Socket>) : Server
    return this.on("connection", callback);

  function close() : Server;

  // TODO internal only?
  function handleRequest(request : js.node.http.ClientRequest, request : js.node.http.IncomingMessage) : Server;

  // TODO internal only?
  function handleUpgrade(request : js.node.http.ClientRequest, stream : js.node.Stream<Dynamic>, buffer : js.node.Buffer) : Server;

  @:overload(function(server : js.node.http.Server, options : ServerAttachOptions) : Server {})
  function attach(server : js.node.http.Server) : Server;

  // TODO is return type correct?
  function generateId(request : js.node.http.ClientRequest) : String;
}
