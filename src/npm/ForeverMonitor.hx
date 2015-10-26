package npm;

import haxe.Constraints.Function;
import npm.forever.ForeverOptions;

@:jsRequire("forever-monitor", "Monitor")
extern class ForeverMonitor {
  function new(scriptPath : String, ?options : ForeverOptions);

  function on(event : String, callback : Function): Void;

  function start() : Void;
}
