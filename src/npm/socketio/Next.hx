package npm.socketio;

import js.Error;

typedef FNext = Void -> Void;
typedef FNextError = Error -> Void;

abstract Next(Dynamic) from FNext to FNext from FNextError to FNextError
{
  public inline function call() {
    untyped this();
  }

  public inline function error(err : Error) {
    untyped this(err);
  }
}
