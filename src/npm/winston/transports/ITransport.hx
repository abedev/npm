package npm.winston.transports;

import js.Error;

interface ITransport {
  public var name : String;
  public var level : String;
  public function log(level : String, msg : String, meta : Dynamic, callback : Error -> Bool -> Void) : Void;
}
