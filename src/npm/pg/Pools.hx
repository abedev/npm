package npm.pg;

extern class Pools {
  public static var all(default, null) : Dynamic<Pool>;

  public static function getOrCreate() : Pool;
}
