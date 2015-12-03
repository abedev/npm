package npm.pg;

import js.Error;

typedef QueryCallback = Null<Error> -> { rows: Array<Row> } -> Void;
