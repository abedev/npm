package npm;

import haxe.extern.EitherType;
import js.Error;

@:jsRequire("yargs/yargs")
extern class Yargs {
  @:selfCall
  public function new(args : Array<String>) { }

  public function alias(key : String, alias : String) : Yargs;

  public function array(key : String) : Yargs;

  @:overload(function(keys : Array<String>) : Yargs {})
  public function boolean(key : String) : Yargs;

  public function check(fn : Dynamic -> Array<String> -> Bool) : Yargs;

  @:overload(function(key : String, choice : Dynamic) : Yargs {})
  public function choices(key : String, choices : Array<Dynamic>) : Yargs;

  // TODO: overloads
  @:overload(function(cmd : String, desc : String) : Yargs {})
  public function command(cmd : String, desc : String, builder : {}, handler : {} -> Void) : Yargs;

  // TODO: Opts type
  public function commandDir(directory : String, ?opts : {}) : Yargs;

  // TODO: public function completion
  // TODO: public function config

  public function count(arg : String) : Yargs;

  @:native("default")
  @:overload(function(obj : {}) : Yargs {})
  public function defaulted(arg : String, value : Dynamic, ?desc : String) : Yargs;

  @:overload(function(count : Int) : Yargs {})
  @:overload(function(arg : String) : Yargs {})
  public function demand(args : Array<String>) : Yargs;

  public function describe(key : String, message : String) : Yargs;

  public function detectLocale(flag : Bool) : Yargs;

  public function env(?prefix : String) : Yargs;

  public function epilog(str : String) : Yargs;
  public function epilogue(str : String) : Yargs;

  public function example(cmd : String, desc : String) : Yargs;

  public function exitProcess(flag : Bool) : Yargs;

  public function fail(fn : String -> Dynamic -> Void) : Yargs;

  public function getCompletion(args : Array<String>, done : Array<String> -> Void) : Yargs;

  @:overload(function(arg : String) : Yargs {})
  public function global(args : Array<String>) : Yargs;

  @:overload(function(keys : Array<String>, groupName : String) : Yargs {})
  public function group(key : String, groupName : String) : Yargs;

  // TODO: overload
  public function help() : Yargs;

  // TODO: overload
  public function implies(x : String, y : String) : Yargs;

  public function locale() : String;

  @:native("locale")
  public function setLocale(name : String) : Yargs;

  public function nargs(key : String, count : Int) : Yargs;

  public function normalize(key : String) : Yargs;

  @:overload(function(keys : Array<String>) : Yargs {})
  public function number(key : String) : Yargs;

  public function option(key : String, opt : OptionConfig) : Yargs;

  public function options(opts : Dynamic<OptionConfig>) : Yargs;

  //public static function parse(args : Array<String>) : Yargs;

  //public function pkgConf(key : String

  public function require(key : String) : Yargs;
  public function required(key : String) : Yargs;

  public function requiresArg(key : String) : Yargs;

  public function reset() : Yargs;

  public function showCompletionScript() : Yargs;

  public function showHelp(consoleLevel : String) : Yargs;

  public function showHelpOnFail(enable : Bool, ?message : String) : Yargs;

  public function skipValidation(key : String) : Yargs;

  public function strict() : Yargs;

  public function string(key : String) : Yargs;

  public function updateLocale(obj : {}) : Yargs;

  public function updateStrings(obj : {}) : Yargs;

  public function usage(message : String, ?opts : Dynamic<OptionConfig>) : Yargs;

  // TODO: overloads
  public function version() : Yargs;

  public function wrap(columns : Int) : Yargs;

  public var argv(default, null) : Dynamic;
}

typedef OptionConfig = {
  ?alias: String,
  ?array: Bool,
  ?boolean: Bool,
  ?choices: EitherType<Dynamic, Array<Dynamic>>,
  ?config: Bool,
  //?configParser
  ?count: Bool,
  //?default: Dynamic, // TODO: not sure how to allow this in haxe
  ?defaults: Dynamic,
  ?defaultDescription: String,
  ?demand: Bool,
  ?require: Bool,
  ?required: Bool,
  ?desc: String,
  ?describe: String,
  ?description: String,
  ?global: Bool,
  ?group: String,
  ?nargs: Int,
  ?normalize: Bool,
  ?number: Bool,
  ?requiresArg: Bool,
  ?skipValidation: Bool,
  ?string: Bool,
  ?type: ArgType,

};

@:enum
abstract ArgType(String) to String {
  var TArray = "array";
  var TBoolean = "boolean";
  var TCount = "count";
  var TNumber = "number";
  var TString = "string";

  @:from
  public static function parse(input : String) : ArgType {
    return switch input.toLowerCase() {
      case "array": TArray;
      case "boolean": TBoolean;
      case "count": TCount;
      case "number": TNumber;
      case "string": TString;
      case _ : throw new Error('could not parse $input to Yargs.ArgType');
    };
  }
}
