package npm.sequelize.model;

import haxe.extern.EitherType;

typedef ModelIncludeOptions = {
  model : Model<Dynamic>,
  ?as : String,
  ?where : {},
  ?required: Bool,
  ?include : Array<EitherType<ModelIncludeOptions, Model<Dynamic>>>
}
