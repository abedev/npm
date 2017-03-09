package npm.ajv;

import haxe.extern.EitherType;

import js.Error;

import npm.common.Callback;

typedef LoadSchemaF = String -> Callback<{}> -> Void;

typedef AjvError = {
  keyword: String,
  dataPath: String,
  schemaPath: String,
  params: {}, // TODO

};

typedef AjvOptions = {
  // validation and reporting options:
  ?v5:               Bool,
  ?allErrors:        Bool,
  ?verbose:          Bool,
  ?jsonPointers:     Bool,
  ?uniqueItems:      Bool,
  ?unicode:          Bool,
  ?format:           String,
  ?formats:          {},
  ?unknownFormats:   EitherType<Bool, EitherType<String, Array<String>>>,
  ?schemas:          {},
  // referenced schema options:
  ?missingRefs:      Bool,
  ?extendRefs:       Bool,
  ?loadSchema:       LoadSchemaF, // function(uri, cb) { /* ... */ cb(err, schema); },
  // options to modify validated data:
  ?removeAdditional: Bool,
  ?useDefaults:      Bool,
  ?coerceTypes:      Bool,
  // asynchronous validation options:
  ?async:            Null<EitherType<String, Bool>>,
  ?transpile:        Null<EitherType<String, {} -> {}>>,
  // advanced options:
  ?meta:             Bool,
  ?validateSchema:   Bool,
  ?addUsedSchema:    Bool,
  ?inlineRefs:       Bool,
  ?passContext:      Bool,
  ?loopRequired:     Int,
  ?ownProperties:    Bool,
  ?multipleOfPrecision: Bool,
  ?errorDataPath:    String,
  ?sourceCode:       Bool,
  ?messages:         Bool,
  ?beautify:         Bool,
  ?cache:            {
    put: String -> Dynamic -> Void,
    get: String -> Dynamic,
    del: String -> Void,
    clear: Void -> Void
  }
};

#if(norequire) @:native("Ajv")
#else @:jsRequire("ajv") #end
extern class Ajv {
  function new(?options : AjvOptions) : Void;

  function compile(schema : {}) : Dynamic -> Bool;

  function compileAsync(schema: {}, callback : Callback<Dynamic -> Bool>) : Void;

  @:overload(function(schemaKey: String, data: {}) : Bool {})
  function validate(schema: {}, data: Dynamic) : Bool;

  @:overload(function(schemas: Array<{}>) : Void {})
  function addSchema(schema: {}, schemaKey: String) : Void;

  @:overload(function(schemas: Array<{}>) : Void {})
  function addMetaSchema(schema: {}, schemaKey: String) : Void;

  function validateSchema(schema: {}) : Bool;

  function getSchema(schemaKey: String) : Dynamic -> Bool;

  @:overload(function(regExp: js.RegExp) : Void {})
  @:overload(function(schemaKey: String) : Void {})
  function removeSchema(schema: {}) : Void;

  //function addFormat
  //function addKeyword
  //function getKeyword
  //function removeKeyword

  var schema : {};

  var errors : Array<AjvError>;
  function errorsText(?errors: Array<AjvError>, ?options : { ?separator: String, ?dataVar: String }) : String;
}
