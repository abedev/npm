package npm.request;

import haxe.extern.EitherType;

typedef ResponseBody = EitherType<String, EitherType<js.node.Buffer, {}>>;
