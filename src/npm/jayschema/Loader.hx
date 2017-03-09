package npm.jayschema;

import npm.jayschema.Errors;

typedef Loader = String -> (Null<SchemaLoaderError> -> {} -> Void) -> Void;
