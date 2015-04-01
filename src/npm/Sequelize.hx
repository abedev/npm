package npm;

import npm.sequelize.*;
import js.Promise;

@:jsRequire("sequelize")
extern class Sequelize {
  @:overload(function(connectionstring : String, ?options : DatabaseOptions) : Void {})
  function new(database : String, username : String, password : String, ?options : DatabaseOptions) : Void;
  function define<T : ModelInstance<T>>(modelName : String, attributes : Dynamic<ColumnOptions>, ?options : ModelOptions) : Model<T>;
  function getDialect() : String;
  function getQueryInterface() : QueryInterface;
  //function getMigrator(?options : MigratorOptions, ?force : Bool) : Migrator; // TODO
  function model<T : ModelInstance<T>>(modelName : String) : Model<T>;
  function isDefined(modelName : String) : Bool;
  inline function importModel<T : ModelInstance<T>>(path : String) : Model<T>
    return untyped this["import"](path);

  // TODO add options
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
  function fn(functionName : String, args : haxe.extern.Rest<FunctionColumn>) : SequelizeFunction;
  function col(colName : String) : FunctionColumn;
  //cast(val, type) -> Sequelize.cast
  //literal(val) -> Sequelize.literal
  //and(args) -> Sequelize.and
  //or(args) -> Sequelize.or
  //json(conditions, [value]) -> Sequelize.json
  //where(attr, [comparator='='], logic) -> Sequelize.where
  function transaction(?options : TransactionOptions, ?callback : Transaction -> Promise<Dynamic>) : Promise<Transaction>;

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
}

typedef NumberOptions = {
  ?length : Int,
  ?zerofill : Bool,
  ?decimals : Int,
  ?precision : Int,
  ?scale : Int,
  ?unsigned : Bool
}
