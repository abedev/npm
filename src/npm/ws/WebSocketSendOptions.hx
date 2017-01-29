package npm.ws;

typedef WebSocketSendOptions = {
  ?compress: Bool, // Specifies whether data should be compressed or not. Defaults to true when permessage-deflate is enabled.
  ?binary: Bool, // Specifies whether data should be sent as a binary or not. Default is autodetected.
  ?mask: Bool, // Specifies whether data should be masked or not. Defaults to true when websocket is not a server client.
  ?fin: Bool // Specifies whether data is the last fragment of a message or not. Defaults to true.
};
