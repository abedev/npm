package npm.pg;

import js.Error;
import js.node.events.EventEmitter;

@:jsRequire("pg", "Query")
extern class Query extends EventEmitter<Query> {
}
