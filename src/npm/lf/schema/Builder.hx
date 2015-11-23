package npm.lf.schema;

import js.Promise;

interface Builder {
  function connect(?options : ConnectOptions) : Promise<npm.lf.Database>;
  function createTable(tableName : String) : TableBuilder;
  function getSchema() : Database;
  function setPragma(pragma : DatabasePragma) : Void;
}
