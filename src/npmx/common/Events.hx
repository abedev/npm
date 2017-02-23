package npmx.common;

class Events<T> {
  var listeners(default, null) : Array<T -> Void>;

  public function new() {
    this.listeners = [];
  }

  public function subscribe(f : T -> Void) : Void {
    this.listeners.push(f);
  }

  public function unsubscribe(f : T -> Void) : Void {
    this.listeners.remove(f);
  }

  public function emit(t : T) : Void {
    for (f in listeners) {
      f(t);
    }
  }
}
