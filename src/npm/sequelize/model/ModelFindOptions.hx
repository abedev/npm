package npm.sequelize.model;

import haxe.extern.EitherType;

typedef ModelFindOptions = {
  ?where : {},
  ?attributes : Array<String>,
  ?paranoid : Bool,
  ?include : Array<ModelIncludeOptions>,
  ?order : EitherType<String, EitherType<Array<String>, EitherType<Array<Array<Dynamic>>, SequelizeFunction>>>,
  ?limit : Int,
  ?offset : Int,
  ?transaction : Transaction,
  ?lock: EitherType<String, Dynamic>,
  ?raw: Bool,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?having: Dynamic,
  ?searchPath: String,
  ?benchmark: Bool
}
