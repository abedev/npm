package npm;

import npm.jsyaml.*;

#if norequire @:native("jsyaml")
#else @:jsRequire("js-yaml") #end
extern class JSYaml {
  public static function safeLoad(input : String, ?options : LoadOptions) : {};
  public static function load(input : String, ?options : LoadOptions) : {};
  public static function safeLoadAll(input : String, iterator : String -> Void, ?options : LoadOptions) : {};
  public static function loadAll(input : String, iterator : String -> Void, ?options : LoadOptions) : {};
  public static function safeDump(input : {}, ?options : DumpOptions) : String;
  public static function dump(input : {}, ?options : DumpOptions) : String;
}
