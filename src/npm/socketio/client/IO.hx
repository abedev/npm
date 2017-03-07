package npm.socketio.client;

typedef IOOptions = {
  // TODO
};

@:native("io")
extern class IO {
  var protocol : Float;

  function io(url : String, ?options : IOOptions) : Socket;
}
