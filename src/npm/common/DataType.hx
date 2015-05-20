package npm.common;

import haxe.extern.EitherType;
import js.html.ArrayBuffer;
import js.html.Uint8Array;
import js.node.Buffer;

typedef DataType = EitherType<String, EitherType<ArrayBuffer, EitherType<Uint8Array, Buffer>>>;
