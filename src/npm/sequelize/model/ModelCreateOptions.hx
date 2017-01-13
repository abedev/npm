package npm.sequelize.model;

typedef ModelCreateOptions = {
  ?raw: Bool,
  ?isNewRecord: Bool,
  ?fields: Array<Dynamic>,
  ?include: Array<ModelIncludeOptions>,
  ?onDuplicate: String,
  ?transaction: Transaction,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?searchPath: String,
  ?benchmark: Bool
};
