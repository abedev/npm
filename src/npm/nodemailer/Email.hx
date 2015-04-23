package npm.nodemailer;

import haxe.extern.EitherType;

typedef Email = EitherType<String, { name : String, address : String }>;
