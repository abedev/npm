package npm.lf.schema;

extern interface Database {
  function name() : String;
  function pragma() : DatabasePragma;
  function tables() : Array<Table>;
  function table(tableName : String) : Table;
  function version() : Float;
}
