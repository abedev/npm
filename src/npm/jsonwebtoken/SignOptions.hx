package npm.jsonwebtoken;

typedef SignOptions = {
  ?algorithm : Algorithm,
  ?expiresInMinutes : Int,
  ?audience : String,
  ?subject : String,
  ?issuer : String,
  ?noTimestamp : Bool
}
