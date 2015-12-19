package npm.lf.query;

extern interface Update extends Builder {
  function set(column : npm.lf.schema.Column, value : Dynamic) : Update;
  function where(predicate : npm.lf.Predicate) : Update;
}
