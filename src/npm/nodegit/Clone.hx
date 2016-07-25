package npm.nodegit;

import js.Promise;

@:jsRequire("nodegit", "Clone")
extern class Clone {
  @:selfCall
  static function clone(url : String, local_path : String, options : CloneOptions) : Promise<Repository>;
  static function initOptions(opts : CloneOptions, version : Float) : Int;
}

typedef CloneOptions = {
  ?bare: Float,
  ?checkoutBranch: String,
  ?checkoutOpts: Dynamic, // TODO: CheckoutOptions,
  ?fetchOpts: Dynamic, // TODO: FetchOptions,
  ?local: Float,
  ?remoteCbPayload: Void -> Void,
  ?repositoryCbPayload: Void -> Void,
  ?version: Float
}
