package npm.sequelize.model;

import haxe.extern.EitherType;

typedef ModelMultiAssociationOptions = { > ModelAssociationOptions,
  ?through : EitherType<String, Model<Dynamic>>,
  ?otherKey : EitherType<String, {}>,
  ?scope : {}
}
