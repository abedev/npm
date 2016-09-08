package npm;

import npm.moment.*;

// import haxe.extern.EitherType;
import haxe.extern.Rest;

#if(norequire) @:native("moment")
#else @:jsRequire("moment") #end
extern class Moment extends BaseMoment<Moment>{
  @:overload(function(value : Float) : Moment {})
  @:overload(function(value : Array<Float>) : Moment {})
  @:overload(function(value : String, ?format : String, ?locale : String, ?strict : Bool) : Moment {})
  @:overload(function(value : String, ?formats : Array<String>, ?locale : String, ?strict : Bool) : Moment {})
  @:overload(function(moment : Moment) : Moment {})
  @:overload(function(date : Date) : Moment {})
  static function utc() : Moment;

  @:overload(function(duration : String) : Moment {})
  @:overload(function(options : Dynamic<Float>) : Moment {})
  @:overload(function(duration : Float) : Moment {})
  static function duration(value : Float, unit : String) : Duration;
}

extern class BaseMoment<T : BaseMoment<Dynamic>> {
  static var ISO_8601(default, null) : String;

  @:overload(function(value : String) : Void {})
  @:overload(function(value : String, formats : Array<String>, ?locale : String, ?strict : Bool) : Void {})
  @:overload(function(value : String, format : String, ?locale : String, ?strict : Bool) : Void {})
  @:overload(function(value : Float, format : String) : Void {})
  @:overload(function(options : Dynamic<Float>) : Void {})
  @:overload(function(milliseconds : Float) : Void {})
  @:overload(function(date : Date) : Void {})
  @:overload(function(values : Array<Float>) : Void {})
  @:selfCall function new() : Void;

  function local() : T;

  function isValid() : Bool;

  function isAfter(other : T) : Bool;

  // format
  function format(?pattern : String) : String;
  function fromNow(?withoutSuffix : Bool) : String;

  // get and set
  function get(interval : String) : Float;
  @:overload(function(options : Dynamic<Float>) : T {})
  function set(unit : String, value : Float) : T;

  // comparison
  function max(args : Rest<Moment>) : T;
  function min(args : Rest<Moment>) : T;

  @:overload(function(value : String, ?unit : String, ?floatingPoint : Bool) : Float {})
  @:overload(function(value : Float, ?unit : String, ?floatingPoint : Bool) : Float {})
  @:overload(function(value : Date, ?unit : String, ?floatingPoint : Bool) : Float {})
  @:overload(function(value : Array<Float>, ?unit : String, ?floatingPoint : Bool) : Float {})
  function diff(value : T, ?unit : String, ?floatingPoint : Bool) : Float;

  // math
  @:overload(function(options : Dynamic<Float>) : T {})
  @:overload(function(duration : Duration) : T {})
  function add(value : Float, unit : String) : T;

  @:overload(function(options : Dynamic<Float>) : T {})
  @:overload(function(duration : Duration) : T {})
  function subtract(value : Float, unit : String) : T;

  // time manipulation
  @:overload(function() : Float {})
  function millisecond(setTo : Float) : T;
  @:overload(function() : Float {})
  function milliseconds(setTo : Float) : T;
  @:overload(function() : Int {})
  function second(setTo : Int) : T;
  @:overload(function() : Int {})
  function seconds(setTo : Int) : T;
  @:overload(function() : Int {})
  function minute(setTo : Int) : T;
  @:overload(function() : Int {})
  function minutes(setTo : Int) : T;
  @:overload(function() : Int {})
  function hour(setTo : Int) : T;
  @:overload(function() : Int {})
  function hours(setTo : Int) : T;
  @:overload(function() : Int {})
  function date(setTo : Int) : T;
  @:overload(function() : Int {})
  function dates(setTo : Int) : T;
  @:overload(function() : Int {})
  function day(setTo : Int) : T;
  @:overload(function() : Int {})
  function days(setTo : Int) : T;
  @:overload(function() : Int {})
  function dayOfYear(setTo : Int) : T;
  @:overload(function() : Int {})
  function weekday(setTo : Int) : T; // locale-aware day of week
  @:overload(function() : Int {})
  function isoWeekday(setTo : Int) : T; // ISO day of week
  @:overload(function() : Int {})
  function week(setTo : Int) : T;
  @:overload(function() : Int {})
  function weeks(setTo : Int) : T;
  @:overload(function() : Int {})
  function isoWeek(setTo : Int) : T;
  @:overload(function() : Int {})
  function isoWeeks(setTo : Int) : T;
  @:overload(function() : Int {})
  @:overload(function(setTo : String) : T {})
  function month(setTo : Int) : T;
  @:overload(function() : Int {})
  function months(setTo : Int) : T;
  @:overload(function() : Int {})
  function quarter(setTo : Int) : T;
  @:overload(function() : Float {})
  function unix(setTo : Float) : T;
  @:overload(function() : Int {})
  function year(setTo : Int) : T;
  @:overload(function() : Int {})
  function years(setTo : Int) : T;
  @:overload(function() : Int {})
  function weekYear(setTo : Int) : T;
  @:overload(function() : Int {})
  function isoWeekYear(setTo : Int) : T;
  function weeksInYear() : Int;

  @:overload(function(setTo : String) : T {})
  @:overload(function(setTo : Float) : T {})
  @:overload(function(setTo : Int) : T {})
  function utcOffset() : Int;

  function toDate() : Date;
  function toArray() : Array<Int>;
  function toJSON() : String;
  function toISOString() : String;

  function clone() : T;
}
