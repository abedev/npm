package npm.arango;

import js.Promise;

extern class Cursor {
  var count(default, null) : Int;

  function all() : Array<Dynamic>;
  function next() : Dynamic;
  function hasNext() : Bool;

  @:override(function(fn : Dynamic -> Void) : Promise<Dynamic> {})
  @:override(function(fn : Dynamic -> Bool) : Promise<Dynamic> {})
  @:override(function(fn : Dynamic -> Int -> Void) : Promise<Dynamic> {})
  @:override(function(fn : Dynamic -> Int -> Bool) : Promise<Dynamic> {})
  @:override(function(fn : Dynamic -> Int -> Cursor -> Void) : Promise<Dynamic> {})
  function each(fn : Dynamic -> Int -> Cursor -> Bool) : Promise<Dynamic>;

  @:override(function(fn : Dynamic -> Bool) : Promise<Bool> {})
  @:override(function(fn : Dynamic -> Int -> Bool) : Promise<Bool> {})
  function every(fn : Dynamic -> Int -> Cursor -> Bool) : Promise<Bool>;

  @:override(function(fn : Dynamic -> Bool) : Promise<Bool> {})
  @:override(function(fn : Dynamic -> Int -> Bool) : Promise<Bool> {})
  function some(fn : Dynamic -> Int -> Cursor -> Bool) : Promise<Bool>;

  @:override(function<T>(fn : Dynamic -> T) : Promise<Array<T>> {})
  @:override(function<T>(fn : Dynamic -> Int -> T) : Promise<Array<T>> {})
  function map<T>(fn : Dynamic -> Int -> Cursor -> T) : Promise<Array<T>>;

  @:override(function<T>(fn : T -> Dynamic -> T) : Promise<Array<T>> {})
  @:override(function<T>(fn : T -> Dynamic -> Int -> T) : Promise<Array<T>> {})
  function reduce<T>(fn : T -> Dynamic -> Int -> Cursor -> T, acc : T) : Promise<T>;
}
