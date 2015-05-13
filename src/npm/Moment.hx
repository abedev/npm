package npm;

import npm.moment.*;

// import haxe.extern.EitherType;
import haxe.extern.Rest;

#if(norequire) @:native("moment")
#else @:jsRequire("moment") #end
extern class Moment {
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

  function local() : Moment;

  function isValid() : Bool;

  function isAfter(other : Moment) : Bool;

  // format
  function format(?pattern : String) : String;
  function fromNow(?withoutSuffix : Bool) : String;

  // get and set
  function get(interval : String) : Float;
  @:overload(function(options : Dynamic<Float>) : Moment {})
  function set(unit : String, value : Float) : Moment;

  // comparison
  function max(args : Rest<Moment>) : Moment;
  function min(args : Rest<Moment>) : Moment;

  @:overload(function(value : String, ?unit : String, ?floatingPoint : Bool) : Float {})
  @:overload(function(value : Float, ?unit : String, ?floatingPoint : Bool) : Float {})
  @:overload(function(value : Date, ?unit : String, ?floatingPoint : Bool) : Float {})
  @:overload(function(value : Array<Float>, ?unit : String, ?floatingPoint : Bool) : Float {})
  function diff(value : Moment, ?unit : String, ?floatingPoint : Bool) : Float;

  // math
  @:overload(function(options : Dynamic<Float>) : Moment {})
  @:overload(function(duration : Duration) : Moment {})
  function add(value : Float, unit : String) : Moment;

  @:overload(function(options : Dynamic<Float>) : Moment {})
  @:overload(function(duration : Duration) : Moment {})
  function subtract(value : Float, unit : String) : Moment;

  // time manipulation
  @:overload(function() : Float {})
  function millisecond(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function milliseconds(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function second(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function seconds(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function minute(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function minutes(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function hour(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function hours(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function date(setTo : Float) : Moment;
  @:overload(function() : Float {})
  function dates(setTo : Float) : Moment;
  @:overload(function() : Int {})
  function day(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function days(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function dayOfYear(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function weekday(setTo : Int) : Moment; // locale-aware day of week
  @:overload(function() : Int {})
  function isoWeekday(setTo : Int) : Moment; // ISO day of week
  @:overload(function() : Int {})
  function week(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function weeks(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function isoWeek(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function isoWeeks(setTo : Int) : Moment;
  @:overload(function() : Int {})
  @:overload(function(setTo : String) : Moment {})
  function month(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function months(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function quarter(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function year(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function years(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function weekYear(setTo : Int) : Moment;
  @:overload(function() : Int {})
  function isoWeekYear(setTo : Int) : Moment;
  function weeksInYear() : Int;

  @:overload(function(setTo : String) : Moment {})
  @:overload(function(setTo : Float) : Moment {})
  @:overload(function(setTo : Int) : Moment {})
  function utcOffset() : Int;

  function toDate() : Date;
  function toArray() : Array<Int>;
  function toJSON() : String;
  function toISOString() : String;

  function clone() : Moment;
}
