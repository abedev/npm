package npm.lf.query;

interface Insert extends Builder {
  function into(table : npm.lf.schema.Table) : Insert;

  // TODO: overload... rows can be a Binder or array of Binders
  function values(rows : Array<npm.lf.Row>) : Insert;
}
