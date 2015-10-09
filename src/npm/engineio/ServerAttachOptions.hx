package npm.engineio;

import haxe.extern.EitherType;
import haxe.Constraints.Function;

typedef ServerAttachOptions = {
  ?path : String,
  ?destroyUpgrade : Bool,
  ?destroyUpgradeTimeout : Float
}
