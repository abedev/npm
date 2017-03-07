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

  @:overload(function(value : Bool) : Manager {})
  function reconnection() : Bool;

  @:overload(function(value : Int) : Manager {})
  function reconnectionAttempts() : Int;

  @:overload(function(value : Int) : Manager {})
  function reconnectionDelay() : Int;

  @:overload(function(value : Int) : Manager {})
  function reconnectionDelayMax() : Int;

  @:overload(function(value : Int) : Manager {})
  function timeout() : Int;

  function open(?cb : haxe.Constraints.Function) : Manager;
  // function connect - alias of open

  function socket(nsp : String, ?options : Dynamic) : Socket;
}
