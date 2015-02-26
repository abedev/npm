package npm.jsonwebtoken;

import haxe.EitherType;
import npm.common.StringBuffer;

typedef JWTPayload = EitherType<StringBuffer, {}>;
