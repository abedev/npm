package npm.lf.query;

interface Select extends Builder {
  // function from(...tables: schema.Table[]): Select
  // function groupBy(...columns: schema.Column[]): Select
  function innerJoin(table : npm.lf.schema.Table, predicate : Predicate) : Select;
  function leftOuterJoin(table : npm.lf.schema.Table, predicate : Predicate) : Select;

  // TODO: overload with Int
  function limit(numberOfRows : npm.lf.Binder) : Select;
  function orderBy(column : npm.lf.schema.Column, ?order : Order) : Select;

  // TODO: overload with Int
  function skip(numberOfRows : Binder) : Select;
  function where(predicate : Predicate) : Select;
}
