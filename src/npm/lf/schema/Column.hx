package npm.lf.schema;

extern interface Column extends npm.lf.PredicateProvider {
  function as(name : String) : Column;
  function getName() : String;
  function getNormalizedName() : String;
}
