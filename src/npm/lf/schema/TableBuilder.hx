package npm.lf.schema;

typedef RawForeignKeySpec = {
  local : String,
  ref : String,
  action : npm.lf.ConstraintAction,
  timing : npm.lf.ConstraintAction
};

typedef IndexedColumn = {
  autoIncrement : Bool,
  name : String,
  order : npm.lf.Order
};

interface TableBuilder {
  function addColumn(name : String, type : npm.lf.Type) : TableBuilder;
  function addForeignKey(name : String, spec : RawForeignKeySpec) : TableBuilder;

  @:overload(function(name : String, columns : Array<IndexedColumn>) : TableBuilder {})
  function addIndex(name : String, columns : Array<String>, ?unique : Bool, ?order : npm.lf.Order) : TableBuilder;
  function addNullable(columns : Array<Column>) : TableBuilder;

  @:overload(function(columns : Array<IndexedColumn>) : TableBuilder {})
  function addPrimaryKey(columns : Array<String>) : TableBuilder;
  function addUnique(name : String, columns : Array<Column>) : TableBuilder;
}
