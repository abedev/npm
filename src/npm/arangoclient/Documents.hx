package npm.arango;

extern class Documents {
  function get(docid : String) : js.Promise<Document>;
}
