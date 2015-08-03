package npm;

import npm.fontkit.*;
import npm.common.Callback;

@:jsRequire("fontkit")
extern class Fontkit {
  static function open(fontpath : String, ?postscriptName : String, callback : Callback<Font>) : Void;
  static function openSync(fontpath : String, ?postscriptName : String) : Font;
  static function create(buffer : js.node.Buffer, ?postscriptName : String) : Font;

  @:native("open")
  static function openCollection(fontpath : String, callback : Callback<FontCollection>) : Void;
  @:native("openSync")
  static function openCollectionSync(fontpath : String) : FontCollection;
}
