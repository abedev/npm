package npm.ws;

import haxe.extern.EitherType;
import js.node.Buffer;
import npm.ws.WebSocketServerOptions;

typedef WebSocketClientOptions = {
  ?protocol: String, // Value of the Sec-WebSocket-Protocol header.
  ?perMessageDeflate: EitherType<Bool, DeflateOptions>, // Enable/disable permessage-deflate.
  ?localAddress: String, // Local interface to bind for network connections.
  ?protocolVersion: Float, // TODO: int? Value of the Sec-WebSocket-Version header.
  ?headers: {}, // An object with custom headers to send along with the request.
  ?origin: String, // Value of the Origin or Sec-WebSocket-Origin header depending on the protocolVersion.
  ?agent: EitherType<js.node.http.Agent, js.node.https.Agent>, // Use the specified Agent,
  ?host: String, // Value of the Host header.
  ?family: Int, // IP address family to use during hostname lookup (4 or 6).
  ?checkServerIdentity: Dynamic, // TODO... not much documentation A function to validate the server hostname.
  ?rejectUnauthorized: Bool, // Verify or not the server certificate.
  ?passphrase: String, // The passphrase for the private key or pfx.
  ?ciphers: String, // The ciphers to use or exclude
  ?cert: EitherType<String, EitherType<Array<String>, Buffer>>, // The certificate key.
  ?key: EitherType<String, EitherType<Array<String>, Buffer>>, // The private key.
  ?pfx: EitherType<String, Buffer>, // The private key, certificate, and CA certs.
  ?ca: Array<String> // TODO: probably string, Trusted certificates.
}
