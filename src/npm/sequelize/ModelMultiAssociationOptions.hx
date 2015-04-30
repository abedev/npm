package npm.sequelize;

import haxe.extern.EitherType;

typedef ModelMultiAssociationOptions = { > ModelAssociationOptions,
  ?through : EitherType<String, Model<Dynamic>>,
  ?otherKey : EitherType<String, {}>,
  ?scope : {}
}
