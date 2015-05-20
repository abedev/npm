package npm;

import haxe.extern.EitherType;
import npm.common.DataType;
import npm.jszip.*;

@:jsRequire("jszip")
extern class JSZip {
  static var support : {
      arraybuffer : Bool,
      uint8array : Bool,
      blob : Bool,
      nodebuffer : Bool
    };

  @:overload(function(data : DataType, options : LoadOptions) : Void {})
  @:overload(function(data : DataType) : Void {})
  function new() : Void;

  @:overload(function(data : DataType, options : LoadOptions) : Void {})
  function load(data : DataType) : Void;

  @:overload(function(name : String, data : DataType, options : FileOptions) : JSZip {})
  @:overload(function(name : String, data : DataType) : JSZip {})
  @:overload(function(ereg : js.RegExp) : Array<ZipObject> {})
  function file(name : String) : Null<ZipObject>;

  @:overload(function(ereg : js.RegExp) : Array<ZipObject> {})
  function folder(name : String) : JSZip;

  function filter(predicate : String -> ZipObject -> Bool) : Array<ZipObject>;

  /*
  Delete a file or folder (recursively).
  */
  function remove(name : String) : JSZip;

  /*
  Generates the complete zip file.
  */
  function generate(options : GenerateOptions) : DataType;
}
