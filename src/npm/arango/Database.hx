package npm.arango;

import js.Promise;

@:jsRequire("arangojs", "Database")
extern class Database {
  @:override(function(databaseName : String, users : Array<DatabaseUser>) : Database {})
  function createDatabase(databaseName : String) : Promise<Database>;
  function useDatabase(databaseName : String) : Database;
  function get() : Promise<DatabaseInfo>;
  function listDatabases(): Promise<Array<String>>;
  function listUserDatabases(): Promise<Array<String>>;
  function dropDatabase(name : String): Promise<{}>;
  @:override(function(excludeSystem : Bool): Promise<{}> {})
  function truncate(): Promise<{}>;

  function collection(name : String) : DocumentCollection;
  function edgeCollection(name : String) : EdgeCollection;
  @:override(function(excludeSystem : Bool): Promise<Array<CollectionDescription>> {})
  function listCollections(): Promise<Array<CollectionDescription>>;

  @:override(function(excludeSystem : Bool): Promise<Array<Collection<Dynamic>>> {})
  function collections(): Promise<Array<Collection<Dynamic>>>;

  @:override(function(databaseOptions : DatabaseOptions) : Void {})
  function new(connectionString : String) : Void;
}
