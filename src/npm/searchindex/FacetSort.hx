package npm.searchindex;

@:enum
abstract FacetSort(String) to String {
  var KeyAsc = "keyAsc";
  var KeyDesc = "keyDesc";
  var ValueAsc = "valueAsc";
  var ValueDesc = "valueDesc";
}
