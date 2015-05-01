package npm.list;

import js.html.Node;

extern class Item {
  public var elm : Node;
  // private var _values;
  public function values(?newValues : {}) : Dynamic;
  public function show() : Void;
  public function hide() : Void;
  public function matching() : Bool;
  public function visible() : Bool;
}
