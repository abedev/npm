package npm.sequelize.model;

import haxe.extern.EitherType;

typedef ModelAssociationOptions = {
  ?hooks : Bool,
  ?as : String,
  ?foreignKey : EitherType<String, {}>,
  ?onDelete : String,
  ?onUpdate : String,
  ?constraints : Bool
}
