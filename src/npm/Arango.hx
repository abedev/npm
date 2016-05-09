package npm;

import npm.arango.*;

@:jsRequire("arangojs")
extern class Arango {
  inline public static function connect(connectionString : String) : Database
    return new Database(connectionString);
}
