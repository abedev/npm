package npm;

import npm.moment.*;

// import haxe.extern.EitherType;
import haxe.extern.Rest;

@:jsRequire("moment")
extern class Moment {
  @:selfCall function new(?dateString : String, ?format : String) : Void;

  function isValid() : Bool;

  // format
  function format(?pattern : String) : String;
  function fromNow(?withoutSuffix : Bool) : String;

  // get and set
  function get(interval : String) : Dynamic; // TODO: really? is it always an Int?
  function set(args: Dynamic) : Void; // TODO: does this also return Moment?

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
