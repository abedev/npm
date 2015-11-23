package npm.lf;

import haxe.extern.Rest;
import js.Promise;
import npm.lf.schema.*;
import npm.lf.query.*;

extern interface Database {
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
  function select(columns : Rest<npm.lf.schema.Column>) : npm.lf.query.Select;
  function unobserve(query : npm.lf.query.Select, callback : Dynamic) : Void;
  function update(table : Table) : Update;
}
