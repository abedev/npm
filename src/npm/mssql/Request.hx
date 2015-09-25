package npm.mssql;

import js.node.Stream;
import js.node.events.EventEmitter;
import npm.common.Callback;

@:jsRequire("mssql", "Request")
extern class Request extends EventEmitter<Request> {
  @:overload(function(transaction : Transaction) : Void {})
  @:overload(function(preparedStatement : PreparedStatement) : Void {})
  @:overload(function() : Void {})
  function new(connection : Connection);

  @:overload(function(name: String, value: Dynamic) : Void {})
  function input(name: String, type : DataType, value : Dynamic) : Void;

  @:overload(function(name : String, type : DataType) : Void {})
  function output(name : String, type : DataType, value : Dynamic) : Void;

  function batch(batch : String, callback : Callback1<RecordSet>) : Void;

  //function bulk(table : Table, callback : Callback0) : Void;

  function stream(stream : Stream<Dynamic>) : Stream<Dynamic>;

  function query(command : String, callback : Callback1<RecordSet>) : Void;

  function execute(command : String, callback: Callback2<Array<RecordSet>, Int>) : Void;

  function cancel() : Request;
}
