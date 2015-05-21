package npm;

import npm.common.Callback;

@:jsRequire("fs-extra")
extern class FsExtra {
  static function copy(src : String, dst : String, callback : Callback0) : Void;
  static function copySync(src : String, dst : String) : Void;
}
