package npm;

import npm.sequelize.*;

@:jsRequire("sequelize")
extern class Sequelize {
  @:overload(function(connectionstring : String) : Void {})
  function new(database : String, username : String, password : String, options : DatabaseOptions) : Void;
  function define<T : ModelInstance<T>>(modelName : String, attributes : Dynamic<FieldOptions>, ?options : ModelOptions) : Model<T>;

  static var STRING(default, null) : String;
}

typedef DatabaseOptions = {
  host : String,
  dialect : DatabaseDialect,
  ?pool : {
    max : Int,
    min : Int,
    idle : Int
  },
  ?storage : String // SQLite only
}

@:enum
abstract DatabaseDialect(String) to String {
  var Mysql = "mysql";
  var Mariadb = "mariadb";
  var Sqlite = "sqlite";
  var Postgres = "postgres";
  var Mssql = "mssql";
}