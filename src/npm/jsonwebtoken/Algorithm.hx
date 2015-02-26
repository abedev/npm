package npm.jsonwebtoken;

@:enum
abstract Algorithm(String) from String to String {
  var HS256 = "HS256";
  var HS384 = "HS384";
  var HS512 = "HS512";
  var RS256 = "RS256";
  var RS384 = "RS384";
  var RS512 = "RS512";
  var ES256 = "ES256";
  var ES384 = "ES384";
  var ES512 = "ES512";
  var None = "none";
}
