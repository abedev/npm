package npm.arango;

import js.Promise;

extern class Collection<T : Collection<Dynamic>> {
  @:override(function(options : CollectionOptions) : Promise<T> {})
  function create() : Promise<T>;

  function count() : Promise<{}>; // TODO
  function figures() : Promise<{}>; // TODO
  function revision() : Promise<{}>; // TODO
  @:override(function(checksumOptions : ChecksumOptions) : Promise<{}> {}) // TODO
  function checksum() : Promise<{}>; // TODO

  @:override(function(count : Bool) : Promise<Void> {})
  function load() : Promise<Void>;
  function unload() : Promise<Void>;

  function setProperties(options : CollectionOptions) : Promise<CollectionOptions>;
  function rename(newname : String) : Promise<{}>; // TODO
  function rotate() : Promise<{}>; // TODO
  function truncate() : Promise<Void>; // TODO
  function drop() : Promise<Void>; // TODO

  // simple queries
  @:override(function(options : LimitOptions) : Promise<Void> {})
  function all() : Promise<Cursor>;
  function any() : Promise<Dynamic>;

  @:override(function(options : { count : Int }) : Promise<Void> {})
  function first() : Promise<Array<Dynamic>>;
  @:override(function(options : { count : Int }) : Promise<Void> {})
  function last() : Promise<Array<Dynamic>>;
  function byExample(example : Dynamic) : Promise<Cursor>;
  function removeByExample(example : Dynamic) : Promise<{}>; // TODO
  function replaceByExample(example : Dynamic, newValue : Dynamic) : Promise<{}>; // TODO
  function updateByExample(example : Dynamic, newValue : Dynamic) : Promise<{}>; // TODO
  function lookupByKeys(keys : Array<String>) : Promise<Array<Dynamic>>;
  function removeByKeys(keys : Array<String>) : Promise<{}>; // TODO
  @:override(function(fieldName : String, query : String) : Promise<Cursor> {})
  function fulltext(fieldName : String, query : String, opts : FullTextOptions) : Promise<Cursor>;
  @:override(function(data : Array<Array<Dynamic>>) : Promise<{}> {})
  @:override(function(data : Array<Array<Dynamic>>, options : ImportOptions) : Promise<{}> {})
  @:override(function(data : Array<{}>, options : ImportOptions) : Promise<{}> {})
  @:native("import")
  function importData(data : Array<{}>) : Promise<{}>; // TODO
  function replace(documentHandle : String, newValue : {}) : Promise<{}>; // TODO
  // https://github.com/arangodb/arangojs#collectionupdate
  // https://github.com/arangodb/arangojs#collectionremove
  // https://github.com/arangodb/arangojs#collectionlist
}
