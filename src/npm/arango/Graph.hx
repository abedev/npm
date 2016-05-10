package npm.arango;

import js.Promise;

extern class Graph {
  function get() : Promise<{}>; // TODO
  function create(properties : GraphCreateProperties) : Promise<{}>; // TODO
  @:overload(function() : Promise<Void> {})
  function drop(dropCollections : Bool) : Promise<Void>;
  // https://github.com/arangodb/arangojs#graphvertexcollection
  // https://github.com/arangodb/arangojs#graphaddvertexcollection
  // https://github.com/arangodb/arangojs#graphremovevertexcollection
  // https://github.com/arangodb/arangojs#graphedgecollection
  // https://github.com/arangodb/arangojs#graphaddedgedefinition
  // https://github.com/arangodb/arangojs#graphreplaceedgedefinition
  // https://github.com/arangodb/arangojs#graphremoveedgedefinition
  // https://github.com/arangodb/arangojs#graphtraversal
}

// https://github.com/arangodb/arangojs#graphvertexcollectionremove
// https://github.com/arangodb/arangojs#graphvertexcollectionvertex
// https://github.com/arangodb/arangojs#graphvertexcollectionsave
// https://github.com/arangodb/arangojs#graphedgecollectionremove
// https://github.com/arangodb/arangojs#graphedgecollectionedge
// https://github.com/arangodb/arangojs#graphedgecollectionsave
// https://github.com/arangodb/arangojs#graphedgecollectionedges
// https://github.com/arangodb/arangojs#graphedgecollectioninedges
// https://github.com/arangodb/arangojs#graphedgecollectionoutedges
// https://github.com/arangodb/arangojs#graphedgecollectiontraversal

typedef GraphCreateProperties = {

}
