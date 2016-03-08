package npm;

import npm.request.*;
import npm.request.RequestOptions;
import npm.common.Callback;
import js.node.http.IncomingMessage;

@:jsRequire("request")
extern class Request {
  @:selfCall static function request(options : RequestOptions, callback : Callback2<js.node.http.IncomingMessage, ResponseBody>) : Void;
  @:selfCall static function async(url : String, callback : Callback2<js.node.http.IncomingMessage, ResponseBody>) : Void;
  @:selfCall static function stream(url : String) : Readable;

  @:overload(function(url : String) : Writable {})
  static function put(url : String, options : RequestMethodOptions) : Writable;

  @:overload(function(url : String, callback : Callback2<IncomingMessage, ResponseBody>) : Void {})
  @:overload(function(url : String, options : RequestMethodOptions, callback : Callback2<IncomingMessage, ResponseBody>) : Void {})
  static function get(url : String, options : RequestMethodOptions, callback : Callback<IncomingMessage>) : Void;

  @:overload(function(url : String, callback : Callback<IncomingMessage>) : Void {})
  @:overload(function(url : String, callback : Callback2<IncomingMessage, ResponseBody>) : Void {})
  @:overload(function(url : String, options : RequestMethodOptions, callback : Callback2<IncomingMessage, ResponseBody>) : Void {})
  static function head(url : String, options : RequestMethodOptions, callback : Callback<IncomingMessage>) : Void;

  @:overload(function(url : String, options : RequestMethodOptions) : Writable {})
  @:overload(function(url : String, callback : Callback<IncomingMessage>) : Void {})
  @:overload(function(url : String, callback : Callback2<IncomingMessage, ResponseBody>) : Void {})
  @:overload(function(url : String, options : RequestMethodOptions, callback : Callback2<IncomingMessage, ResponseBody>) : Void {})
  static function post(url : String, options : RequestMethodOptions, callback : Callback<IncomingMessage>) : Void;
}
