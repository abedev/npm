package npm;

import npm.common.Callback;
import npm.searchindex.*;

@:jsRequire("search-index")
extern class SearchIndex {
	@:selfCall new(options : Options) : Void;

	// TODO check return types for all functions
	@:overload(function(options : AddOptions, data : Data, callback : Callback0) : Void {})
	function add(options : AddOptions, data : Array<Data>, callback : Callback0) : Void;

	function del(docID : String, callback : Callback0) : Void;
	function get<T : Data>(docID : String, callback : Callback<T>) : Void;
	function search<T : Data>(query : Query, callback : Callback<Array<T>>) : Void;
	function match(beginsWith : String, callback : Callback<Array<String>>) : Void;
	// TODO check that message type is String
	function tellMeAboutMySearchIndex(callback : String -> Void) : Void;
	function empty(callback : Callback<0>) : Void;
#if hxnodejs
	function snapshot(callback : js.node.stream.Readable) : Void;
	// TODO check that message type is String
	function replicate(source : js.node.stream.Readable, callback : String -> Void) : Void;
#end
}
