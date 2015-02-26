package npm.jsonwebtoken;

enum JWTError {
  TokenExpired(date : Date);
  Malformed;
  SignatureRequired;
  InvalidSignature;
  AudienceInvalid;
  IssuerInvalid;
}
