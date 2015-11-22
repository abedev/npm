package npm.lf.query;

import js.Promise;

interface Builder {
  // function bind(...values : any[]) : Builder;
  function exec() : Promise<Array<Dynamic<Dynamic>>>;
  function explain() : String;
  function toSql() : String;
}
