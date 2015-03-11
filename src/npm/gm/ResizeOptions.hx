package npm.gm;

@:enum
abstract ResizeOptions(String) to String {
  var Percent = "%";
  var Area = "@";
  var Exact = "!";
  var SmallerOnly = "<";
  var BiggerOnly = ">";
}