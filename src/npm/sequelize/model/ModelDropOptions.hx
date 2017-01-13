package npm.sequelize.model;

typedef ModelDropOptions = {
  ?cascade : Bool,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?benchmark: Bool
}
