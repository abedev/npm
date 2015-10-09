package npm.mssql;

import js.node.events.EventEmitter;
import npm.common.Callback;

@:jsRequire("mssql", "PreparedStatement")
extern class PreparedStatement extends EventEmitter<PreparedStatement> {
  @:overload(function(transaction : Transaction) : Void {})
  public function new(connection : Connection);
  public function input(name : String, type : DataType) : Void;
  public function output(name : String, type : DataType) : Void;
  public function prepare(statement : String, callback : Callback0) : Void;
  public function next() : Void;
  public function queue(callback : Callback1<Dynamic>) : Void;
  public function execute(values : String, callback : Callback0) : Void;
  public function unprepare(callback : Callback0) : Void;
}
