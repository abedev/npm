package npm;

@:jsRequire("rand-token")
extern class RandToken {
  static function generate(size : Int) : String;
}