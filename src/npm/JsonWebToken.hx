package npm;

import haxe.EitherType;
import js.node.Buffer;
import npm.common.StringBuffer;
import npm.jsonwebtoken.*;

@:jsRequire("jsonwebtoken")
extern class JsonWebToken {
  static function sign(payload : JWTPayload, secretOrPrivateKey : StringBuffer, ?options : SignOptions) : String;
  @:overload(function(token : String, secretOrPrivateKey : StringBuffer, ?options : VerifyOptions, callback : JsonWebTokenError -> {} -> Void) : Void {})
  static function verify(token : String, secretOrPrivateKey : StringBuffer, ?options : VerifyOptions) : {};
  static function decode(token : String, ?options : DecodeOptions) : {};

  static inline function errorType(err : JsonWebTokenError) : JWTError
    return switch [err.name, err.message, untyped err.expiredAt] {
      case ["TokenExpiredError", _, date]:
        TokenExpired(date);
      case ["JsonWebTokenError", "jwt malformed", _]:
        Malformed;
      case ["JsonWebTokenError", "jwt signature is required", _]:
        SignatureRequired;
      case ["JsonWebTokenError", "invalid signature", _]:
        InvalidSignature;
      case ["JsonWebTokenError", "jwt audience invalid. expected: [OPTIONS AUDIENCE]", _]:
        AudienceInvalid;
      case ["JsonWebTokenError", "jwt issuer invalid. expected: [OPTIONS ISSUER]", _]:
        IssuerInvalid;
      case [_, _, _]:
        throw err;
    };
}
