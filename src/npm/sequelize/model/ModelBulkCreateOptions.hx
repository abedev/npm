package npm.sequelize.model;

typedef ModelBulkCreateOptions = {
  ?fields: Array<Dynamic>,
  ?validate: Bool,
  ?hooks: Bool,
  ?individualHooks: Bool,
  ?ignoreDuplicates: Bool,
  ?updateOnDuplicate: Array<Dynamic>, // ?
  ?transaction: Transaction,
  ?logging: haxe.extern.EitherType<Bool, haxe.Constraints.Function>,
  ?returning: Bool,
  ?searchPath: String,
  ?benchmark: Bool
};
