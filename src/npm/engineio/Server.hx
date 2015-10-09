package npm.engineio;

import npm.common.Callback;

@:jsRequire("engine.io", "Server")
extern class Server extends js.node.events.EventEmitter<Server> {
  function new(?options : ServerOptions) : Void;
}
