package npm.sequelize;

import haxe.extern.EitherType;

typedef ModelMultiAssociationOptions = { > ModelAssociationOptions,
  ?through : EitherType<String, ModelInstance<Dynamic>>,
  ?otherKey : EitherType<String, {}>,
  ?scope : {}
}
