package npm.sequelize;

typedef ModelDestroyOptions = {
  ?where: {},
  ?hooks: Bool,
  ?individualHooks: Bool,
  ?limit: Int,
  ?force: Bool,
  ?truncate: Bool,
  ?cascade: Bool,
  ?restartIdentity: Bool,
  ?transaction: Transaction,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?benchmark: Bool
}
