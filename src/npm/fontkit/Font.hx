package npm.fontkit;

extern class Font {
  // metadata
  var copyright : String;
  var familyName : String;
  var fullName : String;
  var postscriptName : String;
  var subfamilyName : String;
  var version : String;

  // metrics
  var ascent : Float;
  var bbox : Array<Float>; // ?
  var capHeight : Float;
  var descent : Float;
  var italicAngle : Float;
  var lineGap : Float;
  var scale : Float;
  var underlinePosition : Float;
  var underlineThickness : Float;
  var unitsPerEm : Float;
  var xHeight : Float;

  // other
  var numGlyphs : Int;
  var characterSet : Array<String>; // ?
  var availableFeatures : Array<String>; // ?

  // character to glyph mapping
  function glyphsForString(text : String, ?features : Array<String>) : Array<Glyph>;
  function glyphForCodePoint(codePoint : Int) : Glyph;
  function hasGlyphForCodePoint(codePoint : Int) : Bool;

  // glyph metrics and layout
  function advancesForGlyphs(glyphs : Array<Glyph>, ?features : Array<String>) : Array<Float>;
  function widthOfString(text : String, features : Array<String>) : Float;
  function widthOfGlyph(glyph_id : Int) : Float; // ?


  // other methods
  function getGlyph(glyph_id : Int, ?codePoints : Array<Int>) : Glyph; // ?
  function createSubset() : Subset;

  //function heightOfString(text : String) : Float;
}
