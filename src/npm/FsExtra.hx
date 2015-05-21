package npm;

import npm.common.Callback;
import npm.common.DataType;
import npm.fsextra.*;
import js.node.stream.Writable;

@:jsRequire("fs-extra")
extern class FsExtra {
  static function copy(src : String, dest : String, callback : Callback0) : Void;
  static function copySync(src : String, dest : String) : Void;

  @:overload(function(file : String, options : WriteStreamOptions) : Writable<Dynamic> {})
  static function createOutputStream(file : String) : Writable<Dynamic>;
  @:overload(function(file : String, options : WriteStreamOptions) : Writable<Dynamic> {})
  static function createWriteStream(file : String) : Writable<Dynamic>;

  static function emptyDir(directory : String, callback : Callback0) : Void;
  static function emptyDirSync(directory : String) : Void;

  static function ensureFile(file : String, callback : Callback0) : Void;
  static function ensureFileSync(file : String) : Void;

  static function ensureDir(directory : String, callback : Callback0) : Void;
  static function ensureDirSync(directory : String) : Void;

  static function mkdirs(directory : String, callback : Callback0) : Void;
  static function mkdirsSync(directory : String) : Void;

  @:overload(function(src : String, dest : String, options : MoveOptions, callback : Callback0) : Void {})
  static function move(src : String, dest : String, callback : Callback0) : Void;

  static function outputFile(file : String, data : DataType, callback : Callback0) : Void;
  static function outputFileSync(file : String, data : DataType) : Void;

  static function outputJson(file : String, json : {}, callback : Callback0) : Void;
  static function outputJsonSync(file : String, json : {}) : Void;

  static function readJson(file : String, callback : Callback<{}>) : Void;
  static function readJsonSync(file : String) : {};

  static function removeDir(directory : String, callback : Callback0) : Void;
  static function removeDirSync(directory : String) : Void;

  static function writeFile(file : String, data : DataType, callback : Callback0) : Void;
  static function writeFileSync(file : String, data : DataType) : Void;
}
