package npm.socketio.client;

import js.node.events.EventEmitter;

typedef ManagerOptions = {
  ?path: String,
  ?reconnection: Bool,
  ?reconnectionAttempts: Int,
  ?reconnectionDelay: Int,
  ?reconnectionDelayMax: Int,
  ?randomizationFactor: Float,
  ?timeout: Int,
  ?autoConnect: Bool
};

@:native("io.Manager")
extern class Manager extends EventEmitter<Manager> {
  function new(url : String, ?options: ManagerOptions) : Void;

  //function reconnection(value : Bool) : Manager;
  //function reconnectionAttempts(value : Int) : Manager;
  //function reconnectionDelay(value : Int) : Manager;
  //function reconnectionDelayMax(value : Int) : Manager;
  //function timeout(value : Int) : Manager;

  function open(?cb : haxe.Constraints.Function) : Manager;

  // function connect - alias of open

  function socket(nsp : String, ?options : Dynamic) : Socket;
}
