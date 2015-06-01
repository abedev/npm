package npm;

import npm.Moment;

#if(norequire) @:native("moment")
#else @:jsRequire("moment-timezone") #end
extern class MomentTimezone extends BaseMoment<MomentTimezone> {
  function tz(timeZone : String) : MomentTimezone;
}
