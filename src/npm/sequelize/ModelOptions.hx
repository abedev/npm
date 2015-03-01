package npm.sequelize;

typedef ModelOptions = {
  ?paranoid : Bool,
  ?timestamps : Bool,
  ?underscored : Bool,
  ?freezeTableName : Bool,
  ?tableName : String,
  ?name : {
    ?singular : String -> String,
    ?plural : String -> String
  },
  ?indexes : Array<IndexOptions>
}

typedef IndexOptions = {
  ?name : String,
  ?type : String,
  ?methods : String,
  ?unique : Bool,
  ?concurrently : Bool,
  ?fields : Array<IndexFieldOptions>
}

// TODO are these optionals
typedef IndexFieldOptions = {
  attribute : String,
  length : Int,
  order : Dynamic, // TODO ?
  collate : Dynamic, // TODO ?
}