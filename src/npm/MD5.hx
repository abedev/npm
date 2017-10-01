package npm;

import haxe.extern.EitherType;

@:jsRequire("md5")
extern class MD5 {
  @:selfCall
  public static function hash(message: EitherType<String, js.node.Buffer>): String;
}
