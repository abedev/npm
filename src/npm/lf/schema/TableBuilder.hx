package npm.lf.schema;

typedef RawForeignKeySpec = {
  local : String,
  ref : String,
  action : npm.lf.ConstraintAction,
  timing : npm.lf.ConstraintAction
};

interface TableBuilder {
  function addColumn(name : String, type : npm.lf.Type) : TableBuilder;
  function addForeignKey(name : String, spec : RawForeignKeySpec) : TableBuilder;
  // TODO: overload, column can be array of IndexedColumn
  function addIndex(name : String, columns : Array<String>, ?unique : Bool, ?order : npm.lf.Order) : TableBuilder;
  function addNullable(columns : Array<Column>) : TableBuilder;
  // TODO: same overload as above
  function addPrimaryKey(columns : Array<String>) : TableBuilder;
  function addUnique(name : String, columns : Array<Column>) : TableBuilder;
}
