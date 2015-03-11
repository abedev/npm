package npm.socketio;

typedef FNextSocket = Void -> Void;
typedef FNextSocketError = Error -> Void;

abstract NextSocket(Dynamic)
  from FNextSocket to FNextSocket
  from FNextSocketError to FNextSocketError
{
  public inline function call()
    untyped this();

  public inline function error(err : js.Error)
    untyped this(err);
}