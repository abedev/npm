package npm.contentdisposition;

import haxe.extern.EitherType;

typedef Options = {
  ?fallback : EitherType<Bool, String>,
  ?type : DispositionType
}
