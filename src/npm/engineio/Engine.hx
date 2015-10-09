package npm.engineio;

import npm.common.Callback;
import haxe.Constraints.Function;

extern class Engine extends js.node.events.EventEmitter<Engine> {
  static var protocol(default, null) : Float;
  static var transports(default, null) : Dynamic<Function>;

  // TODO is Array<Int> correct?
  inline function onFlush(callback : Callback2<Socket, Array<Int>>) : Engine
    return this.on("flush", callback);

  inline function onDrain(callback : Callback<Socket>) : Engine
    return this.on("drain", callback);
}
