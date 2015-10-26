package npm;

import npm.forever.ForeverOptions;

@:jsRequire("forever-monitor", "Monitor")
extern class ForeverMonitor {
  function new(scriptPath : String, options : ForeverOptions);

  function on(event : String, callback : ?Dynamic -> Void): Void;

  function start() : Void;
}
