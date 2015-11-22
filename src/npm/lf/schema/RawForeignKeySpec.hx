package npm.lf.schema;

typedef RawForeignKeySpec = {
  local : String,
  ref : String,
  action : npm.lf.ConstraintAction,
  timing : npm.lf.ConstraintAction
};
