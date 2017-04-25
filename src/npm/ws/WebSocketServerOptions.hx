package npm.ws;

import haxe.extern.EitherType;

typedef VerifyClientInfo = {
  origin: String, // The value in the Origin header indicated by the client.
  req: js.node.http.IncomingMessage, // The client HTTP GET request.
  secure: Bool // true if req.connection.authorized or req.connection.encrypted is set.
};

typedef VerifyCallback = Bool -> Int -> String -> Void;

typedef DeflateOptions = {
  ?serverNoContextTakeover: Bool, // Whether to use context take over or not.
  ?clientNoContextTakeover: Bool, // The value to be requested to clients whether to use context take over or not.
  
  // TODO: the following options probably also handle `Float`,
  // but I don't know enough of the context to know if that's a good idea
  ?serverMaxWindowBits: Int, // The value of windowBits.
  ?clientMaxWindowBits: Int, // The value of max windowBits to be requested to clients.
  ?memLevel: Int, // The value of memLevel.
  ?threshold: Int // Payloads smaller than this will not be compressed. Defaults to 1024 bytes.
};

// one of `port`, `server`, or `noserver` is required
typedef BaseOptions = {
  ?host: String, // The hostname where to bind the server.
  ?backlog: Int, // The maximum length of the queue of pending connections.
  ?verifyClient: EitherType<VerifyClientInfo -> Bool, VerifyClientInfo -> VerifyCallback -> Bool>, // A function which can be used to validate incoming connections.
  ?handleProtocols: Array<String> -> EitherType<Bool, String>, // A function which can be used to handle the WebSocket subprotocols.
  ?path: String, // Accept only connections matching this path.
  ?clientTracking: Bool, // Specifies whether or not to track clients.
  ?perMessageDeflate: EitherType<Bool, DeflateOptions>, // Enable/disable permessage-deflate.
  ?maxPayload: Int, // The maximum allowed message size in bytes.
  ?callback: Void -> Void // TODO: check this... the documentation is lacking

};

typedef WebSocketServerOptionsWithPort = { > BaseOptions,
  port: Int // The port where to bind the server.
};

typedef WebSocketServerOptionsWithServer = { > BaseOptions,
  server: EitherType<js.node.http.Server, js.node.https.Server> // A pre-created Node.js HTTP server.
};

typedef WebSocketServerOptionsWithNoServer = { > BaseOptions,
  ?port: Int, // The port where to bind the server.
  ?server: EitherType<js.node.http.Server, js.node.https.Server>, // A pre-created Node.js HTTP server.
                                              
  // it's not clear what happens if you say `noServer: false` without providing other options
  // ...it probably throws
  noServer: Bool // Enable no server mode
};
