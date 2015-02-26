package npm;

import js.Error;
import haxe.EitherType;

@:jsRequire("bcryptjs")
extern class BCryptjs {
  static function genSaltSync(?rounds : Int) : String;
  static function genSalt(?rounds : Int, callback : Error -> String -> Void) : Void;

  static function hashSync(s : String, salt : EitherType<Int, String>) : String;
  static function hash(s : String, salt : EitherType<Int, String>, callback : Error -> String -> Void, ?progressCallback : Float -> Void) : String;

  static function compareSync(s : String, hash : String) : Bool;
  static function compare(s : String, hash : String, callback : Error -> Bool -> Void, ?progressCallback : Float -> Void) : Void;
}