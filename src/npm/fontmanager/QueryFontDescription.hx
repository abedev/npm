package npm.fontmanager;

typedef QueryFontDescription = {
  ?path : String,
  ?postscriptName : String,
  ?family : String,
  ?style : String,
  ?weight : Int,
  ?width : Int,
  ?italic : Bool,
  ?monospace : Bool
}
