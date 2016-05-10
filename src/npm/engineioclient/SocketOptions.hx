package npm.engineioclient;

import haxe.extern.EitherType;

#if !norequire @:native("eio") #end
typedef SocketOptions = {
  ?agent : js.node.http.Agent,
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
