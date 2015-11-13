package npm;

import npm.common.Callback;
import npm.searchindex.*;

@:jsRequire("search-index")
extern class SearchIndex<T> {
  @:selfCall function new(options : Options) : Void;

  @:overload(function(batch : Array<T>, callback : Callback0) : Void {})
  function add(batch : Array<T>, batchOptions : BatchOptions, callback : Callback0) : Void;
  function close(callback : Callback0) : Void;
  function del(docID : String, callback : Callback0) : Void;
  function deleteBatch(docIDs : Array<String>, callback : Callback0) : Void;
  function empty(callback : Callback0) : Void;
  function get(docID : String, callback : Callback<T>) : Void;
  function getStopwords(?lang : String) : Array<String>;
  // TODO callback type is most likely wrong
  function match(options : MatchOptions, callback : Callback<Array<String>>) : Void;
  function search(query : Array<Query>, callback : Callback<Array<T>>) : Void;
  // TODO check that message type is String
  function replicateBatch(serializedDB : Array<{}>, callback : Callback0) : Void;
  function snapshotBatch(callback : Callback<Array<Dynamic>>) : Void;
  function tellMeAboutMySearchIndex(callback : Callback<Dynamic>) : Void;

#if hxnodejs
  function snapshot(callback : js.node.stream.Readable<Dynamic>) : Void;
  function replicate(source : js.node.stream.Readable<Dynamic>, callback : Callback0) : Void;
#end
}
