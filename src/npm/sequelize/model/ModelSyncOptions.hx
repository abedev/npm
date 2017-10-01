package npm.sequelize.model;

import haxe.extern.EitherType;

import js.RegExp;

typedef ModelSyncOptions = {
  ?force : Bool,
  ?match : RegExp,
  ?logging : EitherType<Bool,Dynamic->Void>,
  ?schema : String,
  ?searchPath : String,
  ?hooks : Bool,
  ?alter : Bool
}