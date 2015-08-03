package npm.fontkit;

extern class Path {
  function moveTo(x : Float, y : Float) : Void; // ?
  function lineTo(x : Float, y : Float) : Void; // ?
  function quadraticCurveTo(cpx : Float, cpy : Float, x : Float, y : Float) : Void; // ?
  function bezierCurveTo(cp1x : Float, cp1y : Float, cp2x : Float, cp2y : Float, x : Float, y : Float) : Void; // ?
  function closePath() : Void; // ?
  function toFunction() : js.html.CanvasRenderingContext2D -> Void;
  function toSVG() : String;
  var bbox : Array<Float>; // ?
  var cbox : Array<Float>; // ?
}
