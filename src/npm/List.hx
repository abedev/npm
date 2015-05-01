package npm;

import js.html.Node;

#if(norequire) @:native("List")
#else @:jsRequire("list") #end
extern class List {
  // TODO: overload listId... can be an html element
  function new(listId : String, ?options : ListOptions, ?values : Array<{}>) : Void;

  function add(item : {}) : Void;
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
