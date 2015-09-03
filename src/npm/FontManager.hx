package npm;

import npm.fontmanager.*;

@:jsRequire("font-manager")
extern class FontManager {
  static function getAvailableFonts() : Array<FontDescription>;
}
