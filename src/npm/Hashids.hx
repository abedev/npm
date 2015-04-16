package npm;

import haxe.extern.Rest;

@:jsRequire("hashids")
extern class Hashids {
  @:overload(function(salt : String, minlength : Int, alphabet : String) : String {})
  @:overload(function(salt : String, alphabet : String) : String {})
  @:overload(function(salt : String, minlength : Int) : String {})
  function new(salt : String) : Void;

  @:overload(function(values : Array<Int>) : String {})
  @:overload(function(values : Rest<Int>) : String {})
  function encode(value : Int) : String;

  function encodeHex(value : String) : String;

  function decode(value : String) : Array<Int>;

  function decodeHex(value : String) : String;
}
