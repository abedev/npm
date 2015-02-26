package npm.sequelize;

import haxe.EitherType;

typedef FieldOptions = {
  ?type : String,
  ?allowNull : Bool,
  ?defaultValue : Dynamic,
  ?unique : EitherType<String, Bool>,
  ?primaryKey : Bool,
  ?field : String,
  ?autoIncrement : Bool,
  ?comment : String,
  ?references : EitherType<String, Model<Dynamic>>,
  ?referencesKey : String,
  ?onUpdate : String,
  ?onDelete : String,
  //?get<TIn, TOut> : TIn -> TOut,
  //?set<TIn, TOut> : TIn -> TOut,
  ?validate : Validation
}