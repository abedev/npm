package npm.gm;

@:enum
abstract Channel(String) to String {
  var Red = "Red";
  var Green = "Green";
  var Blue = "Blue";
  var Opacity = "Opacity";
  var Matte = "Matte";
  var Cyan = "Cyan";
  var Magenta = "Magenta";
  var Yellow = "Yellow";
  var Black = "Black";
  var Gray = "Gray";
}