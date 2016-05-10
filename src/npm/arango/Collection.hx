package npm.arango;

import js.Promise;
import haxe.extern.EitherType;

extern class Collection<T : Collection<Dynamic>> {
  function get() : Promise<CollectionDescription>; // TODO check that the returned object conforms to CollectionDescription

  @:overload(function(options : CollectionOptions) : Promise<T> {})
  function create() : Promise<T>;

  function count() : Promise<{}>; // TODO
  function figures() : Promise<{}>; // TODO
  function revision() : Promise<{}>; // TODO
  @:overload(function(checksumOptions : ChecksumOptions) : Promise<{}> {}) // TODO
  function checksum() : Promise<{}>; // TODO

  @:overload(function(count : Bool) : Promise<Void> {})
  function load() : Promise<Void>;
  function unload() : Promise<Void>;

  function properties() : Promise<CollectionProperties>;
  function setProperties(options : CollectionOptions) : Promise<CollectionOptions>;
  function rename(newname : String) : Promise<{}>; // TODO
  function rotate() : Promise<{}>; // TODO
  function truncate() : Promise<Void>; // TODO
  function drop() : Promise<Void>; // TODO

  function createIndex(details : IndexOptions) : Promise<{}>; // TODO
  function createCapConstraint(size : EitherType<Float, { ?size : Float, ?byteSize : Float }>) : Promise<{}>; // TODO
  @:overload(function(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}> {})
  function createHashIndex(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}>; // TODO
  @:overload(function(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}> {})
  function createSkipList(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}>; // TODO
  @:overload(function(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}> {})
  function createGeoIndex(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}>; // TODO
  @:overload(function(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}> {})
  function createFulltextIndex(fields : EitherType<String, Array<String>>, options : EitherType<Bool, IndexOptions>) : Promise<{}>; // TODO
  function index(indexHandle : String) : Promise<{}>;
  function indexes() : Promise<Array<{}>>;
  function dropIndex(indexHandle : String) : Promise<Void>;

  // simple queries
  @:overload(function(options : LimitOptions) : Promise<Void> {})
  function all() : Promise<Cursor>;
  function any() : Promise<Dynamic>;

  @:overload(function(options : { count : Int }) : Promise<Void> {})
  function first() : Promise<Array<Dynamic>>;
  @:overload(function(options : { count : Int }) : Promise<Void> {})
  function last() : Promise<Array<Dynamic>>;
  function byExample(example : Dynamic) : Promise<Cursor>;
  function removeByExample(example : Dynamic) : Promise<{}>; // TODO
  function replaceByExample(example : Dynamic, newValue : Dynamic) : Promise<{}>; // TODO
  function updateByExample(example : Dynamic, newValue : Dynamic) : Promise<{}>; // TODO
  function lookupByKeys(keys : Array<String>) : Promise<Array<Dynamic>>;
  function removeByKeys(keys : Array<String>) : Promise<{}>; // TODO
  @:overload(function(fieldName : String, query : String) : Promise<Cursor> {})
  function fulltext(fieldName : String, query : String, opts : FulltextOptions) : Promise<Cursor>;
  @:overload(function(data : Array<Array<Dynamic>>) : Promise<{}> {})
  @:overload(function(data : Array<Array<Dynamic>>, options : ImportOptions) : Promise<{}> {})
  @:overload(function(data : Array<{}>, options : ImportOptions) : Promise<{}> {})
  @:native("import")
  function importData(data : Array<{}>) : Promise<{}>; // TODO
  function replace(documentHandle : String, newValue : {}) : Promise<{}>; // TODO
  @:overload(function(documentHandler : String, newValue : {}) : Promise<Dynamic> {})
  function update(documentHandler : String, newValue : {}, options : UpdateOptions) : Promise<Dynamic>;
  @:overload(function(documentHandler : String, newValue : {}) : Promise<Dynamic> {})
  function remove(documentHandler : String, newValue : {}, options : RemoveOptions) : Promise<Dynamic>;
  @:overload(function(type : String) : Array<String> {})
  function list(type : String) : Array<String>;
}

typedef UpdateOptions = {
  ?waitForSync : Bool,
  ?keepNull : Bool,
  ?mergeObjects : Bool,
  ?rev : String,
  ?policy : String
}

typedef RemoveOptions = {
  ?waitForSync : Bool,
  ?rev : String,
  ?policy : String
}
