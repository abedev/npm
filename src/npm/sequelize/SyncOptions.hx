package npm.sequelize;

import haxe.Constraints.Function;
import haxe.EitherType;

typedef SyncOptions {
  ?force : Bool,
  //?match : RegEx // TODO
  ?logging : EitherType<Function, Bool>,
  ?schema : String
}