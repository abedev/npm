package npm.engineio;

import npm.common.Callback;

@:jsRequire("engine.io", "Server")
extern class Server extends js.node.events.EventEmitter<Server> {
  function new(?options : ServerOptions) : Void;
  // TODO is Array<Int> correct?
  inline public function onFlush(callback : Callback2<Socket, Array<Int>>) : Void
    this.on("flush", callback);

  inline public function onDrain(callback : Callback<Socket>) : Void
    this.on("drain", callback);
}
