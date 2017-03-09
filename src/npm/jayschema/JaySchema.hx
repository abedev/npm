package npm.jayschema;

import npm.jayschema.Errors;

@:jsRequire('jayschema')
extern class JaySchema {
  function new(?loader : Loader) {}

  @:overload(function(value: Dynamic, schema: {}) : Array<ValidationError> {})
  function validate(value: Dynamic, schema: {}, callback: Null<Array<ValidationError>> -> Void) : Void;

  function register(schema: {}, id: String) : Array<String>;

  function getMissingSchemas() : Array<String>;

  function isRegistered(id : String) : Bool;

  function addFormat(formatName: String, handler: Dynamic -> Null<String>) : Void;

  var maxRecursion: Int;

  var loader: Loader;

  static var loaders(default, null) : {
    http: Loader
  };
}

