package npm.lf.raw;

import js.Promise;

extern interface BackStore {
  function getRawDBInstance() : Dynamic;
  function getRawTransaction() : Dynamic;
  function dropTable(tableName : String) : Promise<Void>;

  @:overload(function (tableName : String, columnName : String, defaultValue : Bool) : Promise<Void> {})
  @:overload(function (tableName : String, columnName : String, defaultValue : Int) : Promise<Void> {})
  @:overload(function (tableName : String, columnName : String, defaultValue : Float) : Promise<Void> {})
  @:overload(function (tableName : String, columnName : String, defaultValue : Date) : Promise<Void> {})
  @:overload(function (tableName : String, columnName : String, defaultValue : Array<Dynamic>) : Promise<Void> {})
  function addTableColumn(tableName : String, columnName : String, defaultValue : String) : Promise<Void>;
  function dropTableColumn(tableName : String, columnName : String) : Promise<Void>;
  function renameTableColumn(tableName : String, oldColumnName : String, newColumnName : String) : Promise<Void>;
  function createRow(payload : Dynamic<Dynamic>) : npm.lf.Row;
  function getVersion() : Float;
  function dump() : Array<Dynamic<Dynamic>>;
}
