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

  function isValid() : Bool;

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

  // math
  @:overload(function(options : Dynamic<Float>) : Moment {})
  @:overload(function(duration : Duration) : Moment {})
  function add(value : Float, unit : String) : Moment;

  @:overload(function(options : Dynamic<Float>) : Moment {})
  @:overload(function(duration : Duration) : Moment {})
  function subtract(value : Float, unit : String) : Moment;

  // time manipulation
  function millisecond(?setTo : Float) : Moment;
  function milliseconds(?setTo : Float) : Moment;
  function second(?setTo : Float) : Moment;
  function seconds(?setTo : Float) : Moment;
  function minute(?setTo : Float) : Moment;
  function minutes(?setTo : Float) : Moment;
  function hour(?setTo : Float) : Moment;
  function hours(?setTo : Float) : Moment;
  function date(?setTo : Float) : Moment;
  function dates(?setTo : Float) : Moment;
  // function day(?Number|String) : Moment; // day of week
  // function days(?Number|String) : Moment; // day of week
  // function weekday(?Number) : Moment; // locale-aware day of week
  // function isoWeekday(?Number) : Moment; // ISO day of week
  // function dayOfYear(?Number) : Moment; // 1-366, switching years if out of range
  // function week(?Number) : Moment;
  // function weeks(?Number) : Moment;
  // function isoWeek(?Number) : Moment;
  // function isoWeeks(?Number) : Moment;
  function month(?setTo : Int) : Moment; // TODO: should alternatively accept a string
  function months(?setTo : Int) : Moment;
  // function quarter(?Number) : Moment;
  function year(?setTo : Int) : Moment;
  function years(?setTo : Int) : Moment;
  // function weekYear(?Number) : Moment;
  // function isoWeekYear(?Number) : Moment;
  // funciton weeksInYear() : Moment;

  @:overload(function(duration : String) : Moment {})
  @:overload(function(options : Dynamic<Float>) : Moment {})
  @:overload(function(duration : Float) : Moment {})
  function duration(value : Float, unit : String) : Duration;

  function clone() : Moment;
}
