package npm.jsen;

#if(norequire) @:native("jsen")
#else @:jsRequire("jsen") #end
extern class Jsen {
  @:selfCall
  static function jsen(schema : {}) : JsenValidator;
}

extern class JsenValidator {
  @:selfCall
  function validate(data : {}) : Bool;

  var errors(default, null) : Array<JsenError>;
}

typedef JsenError = {
  path: String,
  keyword: String
}
