package npm;

import npm.Moment;
import npm.moment.Timezone;

#if(norequire) @:native("moment")
#else @:jsRequire("moment-timezone") #end
extern class MomentTimezone extends BaseMoment<MomentTimezone> {
  function tz(timeZone : String) : MomentTimezone;

  @:native('tz')
  static var timezone : Timezone;
}
