package npm.socketio;

import npm.socketio.Next;

typedef PacketMiddleware = Dynamic -> Next -> Void;
