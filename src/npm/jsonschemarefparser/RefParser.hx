package npm.jsonschemarefparser;

import js.Promise;

import npm.common.Callback;

#if(norequire) @:native("$RefParser")
#else @:jsRequire("json-schema-ref-parser") #end
extern class RefParser {
  @:overload(function(schema: {}, callback: Callback<{}>) : Void {})
  static function dereference(schema : {}) : Promise<{}>;
}
