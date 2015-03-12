package npm;

@:jsRequire("mime")
extern class Mime {
  static function lookup(path : String) : String;
  static var default_type : String;
  static function extension(type : String) : String;
  static var charsets(default, null) : { function lookup(mimeType : String) : String; };
  static function define(definitions : Dynamic<Array<String>>) : Void;
  static function load(filepath : String) : Void;
}