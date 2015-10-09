package npm.mssql;

import npm.common.Callback;
import js.Error;
import js.node.events.EventEmitter;

@:jsRequire("mssql", "Connection")
extern class Connection extends EventEmitter<Connection> {
  function new(config : ConnectionConfig, callback: Callback0);

  //function initializeDriver(driver : Dynamic -> Void) : Connection;

  function connect(callback : Callback0) : Void;

  function close(callback : Callback0) : Void;

  function request() : Request;

  function transaction() : Transaction;
}
