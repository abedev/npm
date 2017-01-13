package npm.sequelize.modelinstance;

typedef ModelInstanceSaveOptions = {
  ?fields: Array<String>,
  ?silent: Bool,
  ?validate: Bool,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?transaction: Transaction,
  ?searchPath: String
};
