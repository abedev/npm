package npm;

@:jsRequire("sha1")
extern class Sha1 {
  @:selfCall
  @:overload(function(buffer : Array<Int>) : String)
  @:overload(function(buffer : js.node.Buffer) : String)
  static function hash(value : String) : String;
}
