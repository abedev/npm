package npm.moment;

extern class Duration {
	function abs() : Float;
	function weeks() : Int;
	function valueOf() : Float;
	function humanize(withSuffix : Bool) : String;
	@:overload(function(moment : Moment) : Duration {})
	function add(value : Float, unit : String) : Duration;
	@:overload(function(moment : Moment) : Duration {})
	function subtract(value : Float, unit : String) : Duration;
	function get(units : String) : Float;
	function as(units : String) : Float;

	// locale()
	function toISOString() : String;
	// function localeData()
	function toJSON() : String;

  function asMilliseconds() : Float;
  function asSeconds() : Float;
  function asMinutes() : Float;
  function asHours() : Float;
  function asDays() : Float;
  function asWeeks() : Float;
  function asMonths() : Float;
  function asYears() : Float;
}
