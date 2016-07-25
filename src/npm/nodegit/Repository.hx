package npm.nodegit;

import js.Promise;

@:jsRequire("nodegit", "Repository")
extern class Repository {
  static function discover(start_path : String, across_fs : Int, ceiling_dirs : String) : Promise<Buf>;
  static function init(path : String, is_bare : Int) : Promise<Repository>;
  // TODO: initExt
  static function open(path : String) : Promise<Repository>;
  static function openBare(bare_path : String) : Promise<Repository>;
  // TODO: openExt
  static function wrapOdb(odb : Odb) : Promise<Repository>;

  // instance methods
  // TODO: overload, branch can be `Reference`
  // TODO: opts should be `CheckoutOptions`
  // TODO: what's the js.Promise equivalent of Nil?
  function checkoutBranch(branch : String, opts : Dynamic) : Promise<Dynamic>;

  // TODO: again, CheckoutOptions and Nil
  function checkoutRef(reference : Reference, opts : Dynamic) : Promise<Dynamic>;
  function cleanup() : Void;
  function config() : Promise<Config>;
}
