package npm;

import npm.sequelize.*;

@:jsRequire("sequelize")
extern class Sequelize {
  @:overload(function(connectionstring : String, ?options : DatabaseOptions) : Void {})
  function new(database : String, username : String, password : String, ?options : DatabaseOptions) : Void;
  function define<T : ModelInstance<T>>(modelName : String, attributes : Dynamic<ColumnOptions>, ?options : ModelOptions) : Model<T>;
  function getDialect() : String;
  //function getQueryInterface() : QueryInterface; // TODO
  //function getMigrator(?options : MigratorOptions, ?force : Bool) : Migrator; // TODO
  function model<T : ModelInstance<T>>(modelName : String) : Model<T>;
  function isDefined(modelName : String) : Bool;
  function import<T : ModelInstance<T>>(path : String) : Model<T>;
  //function query(sql : String, ...) // TODO
  //function set(variables : {}, ?options : { transaction : Transaction }) : Promise<?>; // TODO
  function escape(value : String) : String;
  //function createSchema(schema : String) : Promise<?>; // TODO
  //function showAllSchemas() : Promise<?>; // TODO
  //function dropSchema(schema : String) : Promise<?>; // TODO
  //function dropAllSchemas() : Promise<?>; // TODO
  //function sync(?options : SyncOptions) : Promise<?>; // TODO
  //function drop(?options : DropOptions) : Promise<?>; // TODO
  //function authenticate() : Promise<?> // TODO
  //function fn(fn : String, ...) // TODO
  //col(col) -> Sequelize.col
  //cast(val, type) -> Sequelize.cast
  //literal(val) -> Sequelize.literal
  //and(args) -> Sequelize.and
  //or(args) -> Sequelize.or
  //json(conditions, [value]) -> Sequelize.json
  //where(attr, [comparator='='], logic) -> Sequelize.where
  //transaction([options={}]) -> Promise

  static function STRING() : DataType;
  static function INTEGER() : DataType;
}