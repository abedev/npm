package npm.sequelize;

import haxe.extern.EitherType;

typedef QueryOptions = {
	?transaction : Transaction,
	?type : String,
	?nest : Bool,
	?plain : Bool,
	?useMaster : Bool,
	?replacements : EitherType<Dynamic<String>, Array<String>>
}
