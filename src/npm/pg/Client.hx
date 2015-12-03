package npm.pg;

import js.Error;
import js.node.events.EventEmitter;

@:jsRequire("pg", "Client")
extern class Client extends EventEmitter<Client> {
  @:overload(function(config : ClientConfig) : Void {})
  public function new(urlOrSocketPath : String);

  public function connect(callback : Null<Error> -> Void) : Void;

  public function end() : Void;

  @:overload(function(config : QueryConfig, values : Array<Dynamic>, ?callback : QueryCallback) : Query {})
  @:overload(function(config : QueryConfig, ?callback : QueryCallback) : Query {})
  public function query(text : String, ?callback : QueryCallback) : Query;

  public function cancel(client : Client, query : Query) : Void;
  public function escapeIdentifier(str : String) : String;
  public function escapeLiteral(str : String) : String;
}
