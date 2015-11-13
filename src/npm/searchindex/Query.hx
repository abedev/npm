package npm.searchindex;

typedef Query = {
  query : Dynamic<Array<String>>,
  ?offset : Int,
  ?pageSize : Int,
  ?facets : Array<String>,
  ?facetLength : Int,
  ?facetSort : FacetSort,
  ?teaser : String,
  ?weight : Dynamic<Array<Int>>,
  ?filter : Dynamic<Array<String>>
}
