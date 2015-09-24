package npm.mssql;

import js.node.events.EventEmitter;
import npm.common.Callback;

@:jsRequire("mssql", "Transaction")
extern class Transaction extends EventEmitter<Transaction> {
  @:overload(function() : Void {})
  function new(connection : Connection);

  @:overload(function(callback : Callback0) : Transaction {})
  function begin(isolationLevel : Int, callback : Callback0) : Transaction;

  function commit(callback : Callback0) : Transaction;

  function next() : Transaction;

  function queue(callback : Callback1<Dynamic>) : Transaction;

  function request() : Request;

  function rollback(callback : Callback0) : Transaction;
}
