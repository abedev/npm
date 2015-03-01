package npm;

import npm.sequelize.*;

@:jsRequire("sequelize")
extern class Sequelize {
  @:overload(function(connectionstring : String, ?options : DatabaseOptions) : Void {})
  function new(database : String, username : String, password : String, ?options : DatabaseOptions) : Void;
  function define<T : ModelInstance<T>>(modelName : String, attributes : Dynamic<ColumnOptions>, ?options : ModelOptions) : Model<T>;
  function getDialect() : String;
  //function getQueryInterface() : QueryInterface;
  //function getMigrator(?options : MigratorOptions, ?force : Bool) : Migrator;

  static function STRING() : DataType;
  static function INTEGER() : DataType;
}