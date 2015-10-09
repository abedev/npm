package npm.engineio;

import haxe.extern.EitherType;
import haxe.Constraints.Function;

typedef ServerOptions = {
  ?pingTimeout : Float,
  ?pingInterval : Float,
  ?maxHttpBufferSize : Float,
  ?allowRequest : Function, // TODO type properly
  ?transports : Array<String>,
  ?allowUpgrades : Bool,
  ?perMessageDeflate : Dynamic, // TODO type properly
  ?httpCompression : Dynamic, // TODO type properly
  ?threshold : Float,
  ?cookie : EitherType<String, Bool>
}
