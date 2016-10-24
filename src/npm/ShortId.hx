package npm;

@:jsRequire("shortid")
extern class ShortId {
  public static function generate(): String;
  public static function characters(chars: String): Void;
  public static function isValid(id: String): Bool;
  public static function worker(id: Int): Void;
  public static function seed(value: Int): Void;
}
