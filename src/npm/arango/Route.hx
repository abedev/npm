package npm.arango;

import js.Promise;
import haxe.extern.EitherType;

extern class Route {
  @:overload(function() : Route {})
  @:overload(function(path : String) : Route {})
  function route(path : String, headers : {}) : Route;

  @:overload(function() : Promise<Response> {})
  @:overload(function(path : String) : Route {})
  function get(path : String, qs : EitherType<String, {}>) : Promise<Response>;

  @:overload(function() : Promise<Response> {})
  @:overload(function(path : String) : Promise<Response> {})
  @:overload(function(path : String, body : EitherType<String, {}>) : Route {})
  function post(path : String, body : EitherType<String, {}>, qs : EitherType<String, {}>) : Promise<Response>;

  @:overload(function() : Promise<Response> {})
  @:overload(function(path : String) : Promise<Response> {})
  @:overload(function(path : String, body : EitherType<String, {}>) : Route {})
  function put(path : String, body : EitherType<String, {}>, qs : EitherType<String, {}>) : Promise<Response>;

  @:overload(function() : Promise<Response> {})
  @:overload(function(path : String) : Promise<Response> {})
  @:overload(function(path : String, body : EitherType<String, {}>) : Route {})
  function patch(path : String, body : EitherType<String, {}>, qs : EitherType<String, {}>) : Promise<Response>;

  @:overload(function() : Promise<Response> {})
  @:overload(function(path : String) : Promise<Response> {})
  function delete(path : String, qs : EitherType<String, {}>) : Promise<Response>;

  @:overload(function() : Promise<Response> {})
  @:overload(function(path : String) : Promise<Response> {})
  function head(path : String, qs : EitherType<String, {}>) : Promise<Response>;

  @:overload(function() : Promise<Response> {})
  function request(options : RequestOptions) : Promise<Response>;
}

typedef RequestOptions = {
  ?path : String,
  ?absolutePath : Bool,
  ?body : EitherType<String, {}>,
  ?qs : EitherType<String, {}>,
  ?headers : {},
  ?method : String
}
