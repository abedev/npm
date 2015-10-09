package npm.engineioclient;

import haxe.Constraints.Function;
import haxe.extern.Rest;

extern class Emitter<T> {
  function on(event : String, callback : Function) : T;
  function once(event : String, callback : Function) : T;
  function off(event : String, callback : Function) : T;
  function emit(event : String, args : Rest<Dynamic>) : T;
  function listeners(event : String) : Array<Function>;
  function hasListeners(event : String) : Bool;
}
