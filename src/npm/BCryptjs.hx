package npm;

import js.Error;
import haxe.extern.EitherType;
import npm.common.StringInt;

@:jsRequire("bcryptjs")
extern class BCryptjs {
  static function genSaltSync(?rounds : Int) : String;
  static function genSalt(?rounds : Int, callback : Error -> String -> Void) : Void;

  static function hashSync(s : String, salt : StringInt) : String;
  static function hash(s : String, salt : StringInt, callback : Error -> String -> Void, ?progressCallback : Float -> Void) : String;

  static function compareSync(s : String, hash : String) : Bool;
  static function compare(s : String, hash : String, callback : Error -> Bool -> Void, ?progressCallback : Float -> Void) : Void;
}