package npm;

import haxe.extern.Rest;

@:jsRequire("hashids")
extern class Hashids {
  function new(salt : String) : Void;

  @:overload(function(value : Int) : String {})
  function encode(values : Rest<Int>) : String;
  function decode(value : String) : Array<Int>;
}
