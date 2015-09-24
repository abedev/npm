package npm.mssql;

import npm.common.Callback;

@:jsRequire("mssql", "PreparedStatement")
class PreparedStatement extends EventEmitter<PreparedStatement> {
  @:overload(function(transaction : Transaction) {})
  public function new(connection : Connection);
  public function input(name : String, type : DataType);
  public function output(name : String, type : DataType);
  public function prepare(statement : String, callback : Callback0);
  public function next();
  public function queue(callback : Callback1<Dynamic>);
  public function execute(values : String, callback : Callback0);
  public function unprepare(callback : Callback0);
}
