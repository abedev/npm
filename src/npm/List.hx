package npm;

import js.html.Node;
import npm.list.Item;

#if(norequire) @:native("List")
#else @:jsRequire("list") #end
extern class List {
  // TODO: overload listId... can be an html element
  function new(listId : String, ?options : ListOptions, ?values : Array<{}>) : Void;

  function add(item : {}) : Void;
  function filter(?filterFunction : Item -> Bool) : Void;
}

typedef ListOptions = {
  ?valueNames : Array<String>,
  ?item : String,
  ?listClass : String,
  ?searchClass : String,
  ?sortClass : String,
  ?indexAsync : Bool,
  ?page : Int,
  ?i : Int
  // TODO: plugins : Array<Dynamic> ?
}
