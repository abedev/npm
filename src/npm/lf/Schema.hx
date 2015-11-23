package npm.lf;

@:native("lf.schema")
extern class Schema {
  static function create(dbName : String, dbVersion : Float) : npm.lf.schema.Builder;
}
