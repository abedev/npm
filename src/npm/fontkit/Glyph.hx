package npm.fontkit;

extern class Glyph {
  var id : Int; // ?
  var codePoints : Array<Int>;
  var path : Path; // ?
  var bbox : Array<Float>; // ?
  var cbox : Array<Float>; // ?
  var advanceWidth : Float;

  function render(ctx : js.html.CanvasRenderingContext2D, size : Float) : Void;

  //glyph.getImageForSize(size)
  //glyph.layers
}
