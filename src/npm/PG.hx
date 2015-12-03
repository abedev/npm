package npm;

import js.Error;
import npm.pg.*;
import js.node.events.EventEmitter;

@:jsRequire("pg")
extern class PG extends EventEmitter<PG> {
  @:overload(function(config : ConnectConfig, callback : ConnectCallback) : Connection {})
  @:overload(function(callback : ConnectCallback) : Connection {}) // rely on default connection info from env
  public static function connect(connectionString : String, callback : ConnectCallback) : Connection;

  public static function end() : Void;

  public static function cancel(config : CancelConfig, client : Client, query : Query) : Void;

  public static var defaults(default, null) : Defaults;
  public static var pools(default, null) : Pools;
  public static var types(default, null) : Types;
}
