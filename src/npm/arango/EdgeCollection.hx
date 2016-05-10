package npm.arango;

import js.Promise;

extern class EdgeCollection extends Collection<EdgeCollection> {
  function edge(documentHandle : String) : Promise<{}>; // TODO
  @:overload(function(data : {}) : Promise<{}> {})
  @:overload(function(data : {}, fromId : String) : Promise<{}> {})
  function save(data : {}, fromId : String, toId : String) : Promise<{}>; // TODO
  function edges(documentHandle : String) : Promise<Array<{}>>; // TODO
  function inEdges(documentHandle : String) : Promise<Array<{}>>; // TODO
  function outEdges(documentHandle : String) : Promise<Array<{}>>; // TODO
  function traversal(startVertex : String, opts : TraversalOptions) : Promise<Array<{}>>; // TODO
}

typedef TraversalOptions = { // TODO

}
