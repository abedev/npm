package npm.arango;

import js.Promise;

extern class DocumentCollection extends Collection<DocumentCollection> {
  function document(documentHandle : String) : Promise<Null<Dynamic>>;
  function save(data : Dynamic) : Promise<{}>; // TODO
}
