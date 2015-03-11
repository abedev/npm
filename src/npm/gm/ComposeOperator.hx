package npm.gm;

@:enum
abstract ComposeOperator(String) to String {
  var Over = "Over";
  var In = "In";
  var Out = "Out";
  var Atop = "Atop";
  var Xor = "Xor";
  var Plus = "Plus";
  var Minus = "Minus";
  var Add = "Add";
  var Subtract = "Subtract";
  var Difference = "Difference";
  var Divide = "Divide";
  var Multiply = "Multiply";
  var Bumpmap = "Bumpmap";
  var Copy = "Copy";
  var CopyRed = "CopyRed";
  var CopyGreen = "CopyGreen";
  var CopyBlue = "CopyBlue";
  var CopyOpacity = "CopyOpacity";
  var CopyCyan = "CopyCyan";
  var CopyMagenta = "CopyMagenta";
  var CopyYellow = "CopyYellow";
  var CopyBlack = "CopyBlack";
}