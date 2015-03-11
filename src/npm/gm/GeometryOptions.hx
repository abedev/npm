package npm.gm;

@:enum
abstract GeometryOptions(String) to String {
  var Percent = "%";
  var MinBoundaries = "^";
  var Area = "@";
  var Exact = "!";
  var SmallerOnly = "<";
  var BiggerOnly = ">";
}