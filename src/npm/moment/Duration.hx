package npm.moment;

#if(norequire) @:native("moment.duration")
#else @:jsRequire("moment", "duration") #end
extern class Duration {
  @:selfCall function new(value : Float, type : String) : Void;

  function humanize(?withSuffix : Bool) : String;

  function milliseconds() : Float;
  function asMilliseconds() : Float;

  function seconds() : Float;
  function asSeconds() : Float;

  function minutes() : Float;
  function asMinutes() : Float;

  function hours() : Float;
  function asHours() : Float;

  function days() : Float;
  function asDays() : Float;

  function weeks() : Float;
  function asWeeks() : Float;

  function months() : Float;
  function asMonths() : Float;

  function years() : Float;
  function asYears() : Float;

  @:overload(function(duration : Float) : Duration {})
  @:overload(function(duration : Duration) : Duration {})
  @:overload(function(options : Dynamic<Float>) : Duration {})
  function add(value : Float, unit : String) : Duration;

  @:overload(function(duration : Float) : Duration {})
  @:overload(function(duration : Duration) : Duration {})
  @:overload(function(options : Dynamic<Float>) : Duration {})
  function subtract(value : Float, unit : String) : Duration;

  function as(units : String) : Float;

  function get(units : String) : Float;

  function toJSON() : String;

  /*
  function abs() : Float;
  function valueOf() : Float;
  function toISOString() : String;
  */
}
