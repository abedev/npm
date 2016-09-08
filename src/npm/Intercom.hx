package npm;

import npm.intercom.*;
import js.Promise;

@:jsRequire("intercom-client", "Client")
extern class Client {
  @:overload(function(opts: { token: String }): Void{})
  @:overload(function(opts: { app_id: String, app_api_key: String }): Void{})
  public function new(app_id: String, app_api_key: String): Void {}

  public var users(default, null): Users;
  public var events(default, null): Events;
  public var companies(default, null): Companies;
}
