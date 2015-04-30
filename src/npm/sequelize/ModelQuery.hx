package npm.sequelize;

import haxe.extern.EitherType;

typedef ModelQuery = {
  ?where : {},
  ?attributes : Array<String>,
  ?paranoid : Bool,
  ?include : Array<ModelIncludeOptions>,
  ?order : EitherType<String, EitherType<Array<String>, EitherType<Array<Array<Dynamic>>, SequelizeFunction>>>,
  ?limit : Int,
  ?offset : Int,
  ?transaction : Transaction
}
