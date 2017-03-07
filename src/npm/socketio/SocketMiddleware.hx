package npm.socketio;

import npm.socketio.Next;

typedef SocketMiddleware = Socket -> Next -> Void;
