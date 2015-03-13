package npm;

import npm.qs.*;

@:jsRequire("qs")
extern class QS {
  @:overload(function(value : String, options : ParseOptions) : {} {})
  static function parse(value : String) : {};
  @:overload(function(value : {}, options : StringifyOptions) : String {})
  static function stringifu(value : {}) : String;
}