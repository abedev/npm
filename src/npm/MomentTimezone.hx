package npm;

#if(norequire) @:native("moment")
#else @:jsRequire("moment-timezone") #end
extern class MomentTimezone extends Moment {
}
