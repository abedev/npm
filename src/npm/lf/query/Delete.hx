package npm.lf.query;

interface Delete extends Builder {
  function from(table : npm.lf.schema.Table) : Delete;
  function where(predicate : Predicate) : Delete;
}
