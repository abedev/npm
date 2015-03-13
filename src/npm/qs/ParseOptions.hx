package npm.qs;

import haxe.extern.EitherType;

typedef ParseOptions = {
  ?depth : Int,
  ?delimiter : EitherType<String, js.RegExp>,
  ?arrayLimit : Int
}