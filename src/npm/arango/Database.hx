package npm.arango;

import js.Promise;
import haxe.extern.EitherType;

@:jsRequire("arangojs", "Database")
extern class Database {
  @:overload(function(databaseOptions : DatabaseOptions) : Void {})
  function new(connectionString : String) : Void;

  @:overload(function(databaseName : String, users : Array<DatabaseUser>) : Database {})
  function createDatabase(databaseName : String) : Promise<Database>;
  function useDatabase(databaseName : String) : Database;
  function get() : Promise<DatabaseInfo>;
  function listDatabases(): Promise<Array<String>>;
  function listUserDatabases(): Promise<Array<String>>;
  function dropDatabase(name : String): Promise<{}>;
  @:overload(function(excludeSystem : Bool): Promise<{}> {})
  function truncate(): Promise<{}>;

  function collection(name : String) : DocumentCollection;
  function edgeCollection(name : String) : EdgeCollection;
  @:overload(function(excludeSystem : Bool): Promise<Array<CollectionDescription>> {})
  function listCollections(): Promise<Array<CollectionDescription>>;

  @:overload(function(excludeSystem : Bool): Promise<Array<Collection<Dynamic>>> {})
  function collections(): Promise<Array<Collection<Dynamic>>>;

  function graph(graphName : String) : Graph;
  function listGraphs(): Promise<Array<GraphDescription>>;
  function graphs() : Promise<Array<Graph>>;

  @:overload(function(collections : TransactionCollection, action : String) : Promise<{}> {})
  @:overload(function(collections : TransactionCollection, action : String, lockTimeout : Float) : Promise<{}> {})
  @:overload(function(collections : TransactionCollection, action : String, params : Array<Dynamic>) : Promise<{}> {})
  function transaction(collections : TransactionCollection, action : String, params : Array<Dynamic>, lockTimeout : Float) : Promise<{}>; // TODO return type

  @:overload(function(query : AQB) : Promise<Cursor> {})
  @:overload(function(query : AQB, bindVars : {}) : Promise<Cursor> {})
  @:overload(function(query : AQB, bindVars : {}, opts : QueryOptions) : Promise<Cursor> {})
  @:overload(function(query : String) : Promise<Cursor> {})
  @:overload(function(query : String, bindVars : {}) : Promise<Cursor> {})
  function query(query : String, bindVars : {}, opts : QueryOptions) : Promise<Cursor>;

  function listFunctions() : Promise<Array<FunctionDescription>>;
  function createFunction(name : String, code : String) : Promise<Void>;
  @:overload(function(name : String) : Promise<Void> {})
  function dropFunction(name : String, group : Bool) : Promise<Void>;

  @:overload(function() : Route {})
  @:overload(function(path : String) : Route {})
  function route(path : String, headers : {}) : Route;
}

typedef TransactionCollection = EitherType<String, EitherType<Array<String>, {
  ?read : Array<String>,
  ?write : Array<String>
}>>;
