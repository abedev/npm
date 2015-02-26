package npm.jsonwebtoken;

extern class TokenExpiredError extends JsonWebTokenError {
  var expiredAt : Date;
}
