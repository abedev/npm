package npm.arango;

extern class Collections {
  function create(name : String) : js.Promise<Collection>;
}
