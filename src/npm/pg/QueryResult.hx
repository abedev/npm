package npm.pg;

typedef QueryResult = {
  command: String,
  rowCount: Int,
  oid: Float,
  rows: Array<Row>,
  fields: Array<{
    name: String,
    tableID: Int,
    columnID: Int,
    dataTypeID: Int,
    dataTypeSize: Int,
    dataTypeModifier: Int,
    format: String,
  }>,
  //_parsers: Array<haxe.Constraints.Function>,
  //RowCtor: haxe.Constraints.Function,
  rowAsArray: Bool,
  //_getTypeParser: haxe.Constraints.Function
};
