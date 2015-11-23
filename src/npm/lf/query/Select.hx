package npm.lf.query;

import haxe.extern.Rest;

extern interface Select extends Builder {
  function from(tables : Rest<npm.lf.schema.Table>) : Select;
  function groupBy(columns : Rest<npm.lf.schema.Column>) : Select;
  function innerJoin(table : npm.lf.schema.Table, predicate : Predicate) : Select;
  function leftOuterJoin(table : npm.lf.schema.Table, predicate : Predicate) : Select;

  @:overload(function (numberOfRows : Int) : Select {})
  function limit(numberOfRows : npm.lf.Binder) : Select;
  function orderBy(column : npm.lf.schema.Column, ?order : npm.lf.Order) : Select;

  @:overload(function (numberOfRows : Int) : Select {})
  function skip(numberOfRows : Binder) : Select;
  function where(predicate : Predicate) : Select;
}
