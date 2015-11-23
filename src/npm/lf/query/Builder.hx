package npm.lf.query;

import haxe.extern.Rest;
import js.Promise;

extern interface Builder {
  function bind(values : Rest<Dynamic>) : Builder;
  function exec() : Promise<Array<Dynamic<Dynamic>>>;
  function explain() : String;
  function toSql() : String;
}
