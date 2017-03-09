package npm.jayschema;

import npm.jayschema.Errors;

typedef Loader = String -> (Null<ValidationError> -> {} -> Void) -> Void;
