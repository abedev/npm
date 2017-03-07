package npm.socketio.client;

import npm.socketio.client.Manager;

typedef IOOptions = ManagerOptions;

@:native("io")
extern class IO {
  var protocol : Float;

  @:selfCall
  static function io(url : String, ?options : IOOptions) : Socket;
}
