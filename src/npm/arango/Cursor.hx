package npm.arango;

import js.Promise;

extern class Cursor {
  var count(default, null) : Int;

  function all() : Array<Dynamic>;
  function next() : Dynamic;
  function hasNext() : Bool;

  @:overload(function(fn : Dynamic -> Void) : Promise<Dynamic> {})
  @:overload(function(fn : Dynamic -> Bool) : Promise<Dynamic> {})
  @:overload(function(fn : Dynamic -> Int -> Void) : Promise<Dynamic> {})
  @:overload(function(fn : Dynamic -> Int -> Bool) : Promise<Dynamic> {})
  @:overload(function(fn : Dynamic -> Int -> Cursor -> Void) : Promise<Dynamic> {})
  function each(fn : Dynamic -> Int -> Cursor -> Bool) : Promise<Dynamic>;

  @:overload(function(fn : Dynamic -> Bool) : Promise<Bool> {})
  @:overload(function(fn : Dynamic -> Int -> Bool) : Promise<Bool> {})
  function every(fn : Dynamic -> Int -> Cursor -> Bool) : Promise<Bool>;

  @:overload(function(fn : Dynamic -> Bool) : Promise<Bool> {})
  @:overload(function(fn : Dynamic -> Int -> Bool) : Promise<Bool> {})
  function some(fn : Dynamic -> Int -> Cursor -> Bool) : Promise<Bool>;

  @:overload(function<T>(fn : Dynamic -> T) : Promise<Array<T>> {})
  @:overload(function<T>(fn : Dynamic -> Int -> T) : Promise<Array<T>> {})
  function map<T>(fn : Dynamic -> Int -> Cursor -> T) : Promise<Array<T>>;

  @:overload(function<T>(fn : T -> Dynamic -> T) : Promise<Array<T>> {})
  @:overload(function<T>(fn : T -> Dynamic -> Int -> T) : Promise<Array<T>> {})
  function reduce<T>(fn : T -> Dynamic -> Int -> Cursor -> T, acc : T) : Promise<T>;
}
