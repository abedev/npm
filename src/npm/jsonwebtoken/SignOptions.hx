package npm.jsonwebtoken;

typedef SignOptions = {
  ?algorithm : Algorithm,
  ?expiresInMinutes : Int, // TODO remove since it is deprecated
  ?expiresIn : Float,
  ?audience : String,
  ?subject : String,
  ?issuer : String,
  ?noTimestamp : Bool
}
