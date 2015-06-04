package npm;

import npm.request.*;
import npm.common.Callback;

@:jsRequire("request")
extern class Request {
  @:selfCall static function request(options : RequestOptions, callback : Callback<js.node.http.ServerResponse>) : Void;
  @:selfCall static function async(url : String, callback : Callback<js.node.http.ServerResponse>) : Void;
  @:selfCall static function stream(url : String) : Readable;
  static function put(url : String) : Writable;
  static function get(url : String, callback : Callback2<js.node.http.ServerResponse, Dynamic>) : Void;
  static function head(url : String, callback : Callback<js.node.http.ServerResponse>) : Void;
}
