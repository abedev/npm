package npm.common;

import haxe.extern.EitherType;

typedef StringNumber = EitherType<String, EitherType<Int, Float>>;
