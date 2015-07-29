package npm;

@:jsRequire("chalk")
extern class Chalk {
  static var enabled : Bool;
  static var supportsColor : Bool;

  static function hasColor(color : String) : Bool;
  static function stripColor(color : String) : Bool;

  static var reset : ChalkStyle;
  static var bold : ChalkStyle;
  static var dim : ChalkStyle;
  static var italic : ChalkStyle;
  static var underline : ChalkStyle;
  static var inverse : ChalkStyle;
  static var hidden : ChalkStyle;
  static var strikethrough : ChalkStyle;

  static var black : ChalkStyle;
  static var red : ChalkStyle;
  static var green : ChalkStyle;
  static var yellow : ChalkStyle;
  static var blue : ChalkStyle;
  static var magenta : ChalkStyle;
  static var cyan : ChalkStyle;
  static var white : ChalkStyle;
  static var gray : ChalkStyle;
  
  static var bgBlack : ChalkStyle;
  static var bgRed : ChalkStyle;
  static var bgGreen : ChalkStyle;
  static var bgYellow : ChalkStyle;
  static var bgBlue : ChalkStyle;
  static var bgMagenta : ChalkStyle;
  static var bgCyan : ChalkStyle;
  static var bgWhite : ChalkStyle;
}

extern class ChalkStyle {
  @:selfCall()
  function apply(value : String) : String;

  var reset : ChalkStyle;
  var bold : ChalkStyle;
  var dim : ChalkStyle;
  var italic : ChalkStyle;
  var underline : ChalkStyle;
  var inverse : ChalkStyle;
  var hidden : ChalkStyle;
  var strikethrough : ChalkStyle;

  var black : ChalkStyle;
  var red : ChalkStyle;
  var green : ChalkStyle;
  var yellow : ChalkStyle;
  var blue : ChalkStyle;
  var magenta : ChalkStyle;
  var cyan : ChalkStyle;
  var white : ChalkStyle;
  var gray : ChalkStyle;

  var bgBlack : ChalkStyle;
  var bgRed : ChalkStyle;
  var bgGreen : ChalkStyle;
  var bgYellow : ChalkStyle;
  var bgBlue : ChalkStyle;
  var bgMagenta : ChalkStyle;
  var bgCyan : ChalkStyle;
  var bgWhite : ChalkStyle;
}
