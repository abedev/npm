package npm;

import npm.sequelize.*;
import js.Promise;

@:jsRequire("sequelize")
extern class Sequelize {
  @:overload(function(connectionstring : String) : Void {})
  @:overload(function(connectionstring : String, options : DatabaseOptions) : Void {})
  function new(database : String, username : String, password : String, ?options : DatabaseOptions) : Void;
  function define<T : ModelInstance<T>>(modelName : String, attributes : Dynamic<ColumnOptions>, ?options : ModelOptions) : Model<T>;
  function getDialect() : String;
  function getQueryInterface() : QueryInterface;
  //function getMigrator(?options : MigratorOptions, ?force : Bool) : Migrator; // TODO
  function model<T : ModelInstance<T>>(modelName : String) : Model<T>;
  function isDefined(modelName : String) : Bool;
  inline function importModel<T : ModelInstance<T>>(path : String) : Model<T>
    return untyped this["import"](path);

  @:overload(function(sql : String, options : QueryOptions) : Promise<Array<Dynamic>> {})
  @:overload(function(sql : String, model : Model<Dynamic>, options : QueryOptions) : Promise<Array<Dynamic>> {})
  @:overload(function(sql : String, model : Model<Dynamic>) : Promise<Array<Dynamic>> {})
  function query(sql : String) : Promise<Array<Dynamic>>;
  //function set(variables : {}, ?options : { transaction : Transaction }) : Promise<?>; // TODO
  function escape(value : String) : String;
  //function createSchema(schema : String) : Promise<?>; // TODO
  //function showAllSchemas() : Promise<?>; // TODO
  //function dropSchema(schema : String) : Promise<?>; // TODO
  //function dropAllSchemas() : Promise<?>; // TODO
  function sync(?options : SyncOptions) : Promise<Sequelize>;
  //function drop(?options : DropOptions) : Promise<?>; // TODO
  //function authenticate() : Promise<?> // TODO
  function close() : Void;
  //cast(val, type) -> Sequelize.cast
  //and(args) -> Sequelize.and
  //or(args) -> Sequelize.or
  //json(conditions, [value]) -> Sequelize.json
  function transaction(?options : TransactionOptions, ?callback : Transaction -> Promise<Dynamic>) : Promise<Transaction>;

  // TODO return type is not correct but works with the current `where` condition
  static function and(conditions : haxe.extern.Rest<{}>) : {};
  // TODO return type is not correct but works with the current `where` condition
  static function or(conditions : haxe.extern.Rest<{}>) : {};

  static function fn(functionName : String, args : haxe.extern.Rest<Dynamic>) : SequelizeFunction;
  static function col(colName : String) : FunctionColumn;
  static function literal(value: String) : {};
  @:overload(function(attr: Dynamic, logic: Dynamic) : {} {})
  static function where(attr: Dynamic, comparator: Dynamic, logic: Dynamic) : {};
  static function STRING(?length : Int, ?binary : Bool) : DataType;
  static function CHAR(?length : Int, ?binary : Bool) : DataType;
  static function INTEGER(?length : Int) : DataType;
  static function BIGINT(?length : Int) : DataType;
  static function FLOAT(?length : Int, ?decimals : Int) : DataType;
  static function DECIMAL(?precision : Int, ?scale : Int) : DataType;
  static function TEXT() : DataType;
  static function NUMBER() : DataType;
  static function BOOLEAN() : DataType;
  static function TIME() : DataType;
  static function DATE() : DataType;
  static function DATEONLY() : DataType;
  static function HSTORE() : DataType;
  static function JSON() : DataType;
  static function JSONB() : DataType;
  static function NOW() : DataType;
  static function BLOB(?length : Int) : DataType;
  static function RANGE(subtype : DataType) : DataType; // TODO check
  static function UUID() : DataType;
  static function UUIDV1() : DataType;
  static function UUIDV4() : DataType;
  static function VIRTUAL() : DataType;
  static function ENUM(value : haxe.extern.Rest<String>) : DataType;
  static function ARRAY(type : DataType) : DataType;

  inline public static function clearNative(): Void {
    var s = Sequelize;
    untyped __js__('delete s.native');
  }
}

typedef NumberOptions = {
  ?length : Int,
  ?zerofill : Bool,
  ?decimals : Int,
  ?precision : Int,
  ?scale : Int,
  ?unsigned : Bool
}
