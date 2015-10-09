package npm.engineioclient;

import haxe.extern.EitherType;

typedef SocketOptions {
  #if !norequire @:native("eio")
  ?agent : js.node.http.Agent,
  #end
  ?upgrade : Bool,
  ?forceJSONP : Bool,
  ?jsonp : Bool,
  ?forceBase64 : Bool,
  ?enablesXDR : Bool,
  ?timestampRequests : Bool,
  ?timestampParam : String,
  ?policyPort : Int,
  ?path : String,
  ?transports : Array<String>,
  ?rememberUpgrade : Bool,
  ?pfx : String,
  ?key : String,
  ?passphrase : String,
  ?cert : String,
  ?ca : EitherType<String, Array<String>>,
  ?ciphers : String,
  ?rejectUnauthorized : Bool,
  ?perMessageDeflate : Dynamic,
  ?extraHeaders : {}
}
