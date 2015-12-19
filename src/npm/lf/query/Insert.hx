package npm.lf.query;

extern interface Insert extends Builder {
  function into(table : npm.lf.schema.Table) : Insert;

  @:overload(function (rows : npm.lf.Binder) : Insert {})
  @:overload(function (rows : Array<npm.lf.Binder>) : Insert {})
  function values(rows : Array<npm.lf.Row>) : Insert;
}
