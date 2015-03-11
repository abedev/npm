package npm.socketio;

extern class Namespace {
  var name(default, null) : String;
  var connected : Dynamic<Socket>;

  function use(middleware : SocketMiddleware) : Void; // TODO check return type
}