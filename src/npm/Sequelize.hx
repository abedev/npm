package npm;

import npm.sequelize.*;

@:jsRequire("sequelize")
extern class Sequelize {
  @:overload(function(connectionstring : String, ?options : DatabaseOptions) : Void {})
  function new(database : String, username : String, password : String, ?options : DatabaseOptions) : Void;
  function define<T : ModelInstance<T>>(modelName : String, attributes : Dynamic<FieldOptions>, ?options : ModelOptions) : Model<T>;

  static function STRING() : DataType;
  static function INTEGER() : DataType;
}

typedef DatabaseOptions = {
  host : String,
  ?define : {},
  dialect : DatabaseDialect,
  ?dialectModulePath : String,
  ?dialectOptions : {},
  ?pool : {
    max : Int,
    min : Int,
    idle : Int
  },
  ?query : {},
  ?port : Int,
  ?protocol : String,
  ?set : {},
  ?storage : String, // SQLite only
  ?sync : {},
  ?timezone : String,
  ?logging : haxe.Constraints.Function,
  ?omitNull : Bool,
  ?native : Bool,
  ?replication : Bool,
  ?pool : {
    ?maxConnections : Int,
    ?minConnections : Int,
    ?maxIdleTime : Int
    ?validateConnection : haxe.Constraints.Function
  },
  ?quoteIdentifiers : Bool
}

@:enum
abstract DatabaseDialect(String) to String {
  var Mysql = "mysql";
  var Mariadb = "mariadb";
  var Sqlite = "sqlite";
  var Postgres = "postgres";
  var Mssql = "mssql";
}