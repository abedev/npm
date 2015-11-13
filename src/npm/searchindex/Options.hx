package npm.searchindex;

import haxe.extern.EitherType;

typedef Options = {
  ?deletable : Bool,
  ?fieldedSearch : Bool,
  ?indexPath : String,
  ?logLevel : String,
  ?nGramLength : EitherType<Int, EitherType<Array<Int>, { ?gte : Int, ?lte : Int } >>,
  ?stopwords : Array<String>,
  ?fieldsToStore : String
}
