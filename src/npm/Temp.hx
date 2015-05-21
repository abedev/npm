package npm;

import npm.temp.*;
import npm.common.Callback;
import haxe.extern.EitherType;

@:jsRequire("temp")
extern class Temp {
  static function track() : Void;
  static function mkdir(prefix : EitherType<String, AffixOptions>, callback : Callback<String>) : Void;
  static function mkdirSync(prefix : EitherType<String, AffixOptions>) : String;

  static function open(prefix : EitherType<String, AffixOptions>, callback : Callback<Info>) : Void;
  static function openSync(prefix : EitherType<String, AffixOptions>) : Info;

  static function cleanup(callback : Callback<CleanupInfo>) : Void;
  static function cleanupSync() : CleanupInfo;

  static function createWriteStream() : js.node.stream.Writable<Dynamic>;

  static function path(prefix : EitherType<String, AffixOptions>) : String;
}
