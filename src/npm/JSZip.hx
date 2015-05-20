package npm;

import haxe.extern.EitherType;
import npm.common.DataType;

@:jsRequire("jszip")
extern class JSZip {
  @:overload(function(data : DataType, options : LoadOptions) : Void {})
  @:overload(function(data : DataType) : Void {})
  function new() : Void;

  @:overload(function(data : DataType, options : LoadOptions) : Void {})
  function load(data : DataType) : Void;
}
