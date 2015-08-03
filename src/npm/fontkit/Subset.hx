package npm.fontkit;

import haxe.extern.EitherType;

extern class Subset {
  function includeGlyph(glyph : EitherType<Glyph, Int>) : js.node.stream.Readable<Dynamic>; // ?
}
