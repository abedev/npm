package npm;

import npm.contentdisposition.*;

@:jsRequire("content-disposition")
extern class ContentDisposition {
  @:selfCall static function get(filename : String, ?options : Options) : String;
  static function parse(value : String) : { type : DispositionType, parameters : Dynamic<String> };
}
