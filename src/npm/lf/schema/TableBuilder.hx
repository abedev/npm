package npm.lf.schema;

interface TableBuilder {
  function addColumn(name : String, type : npm.lf.Type) : TableBuilder;
  function addForeignKey(name : String, spec : RawForeignKeySpec) : TableBuilder;
  // TODO: overload, column can be array of IndexedColumn
  function addIndex(name : String, columns : Array<String>, ?unique : Bool, ?order : Order) : TableBuilder;
  function addNullable(columns : Array<Column>) : TableBuilder;
  // TODO: same overload as above
  function addPrimaryKey(columns : Array<String>) : TableBuilder;
  function addUnique(name : String, columns : Array<Column>) : TableBuilder;
}