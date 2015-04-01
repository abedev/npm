package npm.searchindex;

typedef Options = {
	?indexPath : String,
	?logLevel : String,
	?logSilent : Bool,
	?db : npm.LevelDB
}
