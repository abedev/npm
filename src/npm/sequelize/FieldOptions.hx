package npm.sequelize;

import haxe.EitherType;
import npm.common.StringBool;

typedef FieldOptions = {
  ?type : String,
  ?allowNull : Bool,
  ?defaultValue : Dynamic,
  ?unique : StringBool,
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