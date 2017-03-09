package npm.jayschema;

extern class ValidationError extends js.Error {
  var resolutionScope : Null<String>;
  var instanceContext : String;
  var constraintName : Null<String>;
  var constraintValue : Null<String>;
  var testedValue : Null<String>;
  var desc : Null<String>;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class NumericValidationError extends ValidationError {
  var kind : String;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class StringValidationError extends ValidationError {
  var kind : String;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class ArrayValidationError extends ValidationError {
  var kind : String;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class ObjectValidationError extends ValidationError {
  var kind : String;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class FormatValidationError extends ValidationError {
  var kind : String;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class LoaderAsyncError extends ValidationError {
  var kind : String;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class SubSchemaValidationError extends ValidationError {
  var kind : String;
  var subSchemaValidationErrors : String;
  function new(?resolutionScope: String, ?instanceContext: String, ?constraintName: String, ?constraintValue: String, ?testedValue: String, ?desc: String);
}

extern class SchemaLoaderError {
  var message : String;
  var kind : String;
  function new(ref : String, message : String, subError : Dynamic);
}
