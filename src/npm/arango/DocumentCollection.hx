package npm.arango;

import js.Promise;
import haxe.extern.EitherType;

extern class DocumentCollection extends Collection<DocumentCollection> {
  function document(documentHandle : String) : Promise<Null<Dynamic>>;
  function save(data : Dynamic) : Promise<{
    _id: String,
    _key: EitherType<String, Int>,
    _rev: Int
  }>;
}
