package npm.sequelize.model;

typedef ModelCountOptions = {
  ?where: {},
  ?include: Array<ModelIncludeOptions>,
  ?distinct: Bool,
  ?attributes: Dynamic,
  ?group: Dynamic,
  ?transaction: Transaction,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?searchPath: String,
  ?benchmark: Bool
};
