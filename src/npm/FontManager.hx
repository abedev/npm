package npm;

import npm.common.Callback;
import npm.fontmanager.*;

@:jsRequire("font-manager")
extern class FontManager {
  static function getAvailableFonts(callback : Callback< Array<FontDescription>>) : Void;
  static function getAvailableFontsSync() : Array<FontDescription>;
  static function findFonts(fontDescriptor : QueryFontDescription, callback : Callback< Array<FontDescription>>) : Void;
  static function findFontsSync(fontDescriptor : QueryFontDescription) : Array<FontDescription>;
  static function findFont(fontDescriptor : QueryFontDescription, callback : Callback< FontDescription>) : Void;
  static function findFontSync(fontDescriptor : QueryFontDescription) : FontDescription;
  static function substituteFont(postscriptName : String, text : String, callback : Callback< FontDescription>) : Void;
  static function substituteFontSync(postscriptName : String, text : String) : FontDescription;
}
