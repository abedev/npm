package npm.awscloudfrontsign;

import haxe.extern.EitherType;

typedef SignOptions = {
  ?expireTime : EitherType<Float, EitherType<Date, npm.Moment>>,
  keypairId : String,
  ?privateKeyString : String,
  ?privateKeyPath : String
}
