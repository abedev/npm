package npm.lf.raw;

import js.Promise;

interface BackStore {
  function getRawDBInstance() : Dynamic;
  function getRawTransaction() : Dynamic;
  function dropTable(tableName : String) : Promise<Void>;

  // TODO: not really dynamic... overload with String, Bool, Number, Date, Array<Dynamic>
  function addTableColumn(tableName : String, columnName : String, defaultValue : Dynamic) : Promise<Void>;
  function dropTableColumn(tableName : String, columnName : String) : Promise<Void>;
  function renameTableColumn(tableName : String, oldColumnName : String, newColumnName : String) : Promise<Void>;
  function createRow(payload : Dynamic<Dynamic>) : npm.lf.Row;
  function getVersion() : Float;
  function dump() : Array<Dynamic<Dynamic>>;
}
