package npm.sequelize.model;

typedef ModelUpdateOptions = {
  where: {},
  ?fields: Array<String>,
  ?validate: Bool,
  ?hooks: Bool,
  ?sideEffects: Bool,
  ?individualHooks: Bool,
  ?returning: Bool,
  ?limit: Int,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?benchmark: Bool,
  ?transaction: Transaction,
  ?silent: Bool
};
