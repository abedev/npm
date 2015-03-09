package npm.sequelize;

import haxe.extern.EitherType;

typedef ModelOptions = {
  ?paranoid : Bool,
  ?timestamps : Bool,
  ?underscored : Bool,
  ?freezeTableName : Bool,
  ?name : {
    ?singular : String -> String,
    ?plural : String -> String
  },
  ?indexes : Array<IndexOptions>,
  ?createdAt : EitherType<String, Bool>,
  ?updatedAt : EitherType<String, Bool>,
  ?deletedAt : EitherType<String, Bool>,
  ?tableName : String,
  //?getterMethods // TODO
  //?setterMethods // TODO
  //?instanceMethods // TODO
  //?classMethods // TODO
  ?schema : String,
  ?engine : String,
  ?charset : String,
  ?comment : String,
  ?collate : String,
  ?initialAutoIncrement : String, // MySQL
  //?hooks // TODO
  //?validat // TODO
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