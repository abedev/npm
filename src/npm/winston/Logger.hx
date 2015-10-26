package npm.winston;

import haxe.extern.Rest;
import npm.winston.LoggerOptions;
import npm.winston.transports.ITransport;

@:jsRequire("winston", "Logger")
extern class Logger {
  function new(options : LoggerOptions);

  function log(level : String, args: Rest<Dynamic>) : Void;
  function silly(args: Rest<Dynamic>) : Void;
  function debug(args: Rest<Dynamic>) : Void;
  function verbose(args: Rest<Dynamic>) : Void;
  function info(args: Rest<Dynamic>) : Void;
  function warn(args: Rest<Dynamic>) : Void;
  function error(args: Rest<Dynamic>) : Void;

  function add(transport : ITransport) : Logger;
  @:overload(function(name : String) : Logger {})
  function remove(transport : ITransport) : Logger;
}
