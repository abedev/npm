package npm.lf;

import js.Promise;
import npm.lf.schema.*;
import npm.lf.query.*;

interface Database {
  function close() : Void;
  function createTransaction(?type : TransactionType) : Transaction;
  function delete() : npm.lf.query.Delete;
  function export() : Promise<Void>;
  function getSchema() : npm.lf.schema.Database;

  @:native("import")
  function importData(data : Dynamic<Dynamic>) : Promise<Void>;
  function insertOrReplace() : npm.lf.query.Insert;
  function insert() : npm.lf.query.Insert;
  function observe(query : npm.lf.query.Select, callback : Dynamic) : Void;
  // TODO: select(...columns: schema.Column[]): query.Select
  function unobserve(query : npm.lf.query.Select, callback : Dynamic) : Void;
  function update(table : Table) : Update;
}
