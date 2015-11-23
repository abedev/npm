package npm.lf;

import js.Promise;

interface Transaction {
  function attach(query : npm.lf.query.Builder) : Promise<Array<Dynamic<Dynamic>>>;
  function begin(scope : Array<npm.lf.schema.Table>) : Promise<Void>;
  function commit() : Promise<Void>;
  function exec(queries : Array<npm.lf.query.Builder>) : Promise<Array<Array<Dynamic<Dynamic>>>>;
  function rollback() : Promise<Void>;
}
