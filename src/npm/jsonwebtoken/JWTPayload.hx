package npm.jsonwebtoken;

import haxe.extern.EitherType;
import npm.common.StringBuffer;

typedef JWTPayload = EitherType<StringBuffer, {}>;
