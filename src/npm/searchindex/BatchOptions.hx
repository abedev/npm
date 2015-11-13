package npm.searchindex;

typedef BatchOptions = {
  ?batchName : String,
  ?fieldOptions : Array<{}>,
  ?fieldsToStore : Array<String>,
  ?defaultFieldOptions : DefaultFieldOptions
}

typedef DefaultFieldOptions = {
  ?filter : Bool,
  ?nGramLength : Int,
  ?searcheable : Bool,
  ?weight : Int,
  ?fieldedSearch : Bool
}
