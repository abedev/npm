package npm.lf;

import js.Promise;
import npm.lf.schema.*;
import npm.lf.query.*;

interface Database {
  function close() : Void;
  function createTransaction(?type : TransactionType) : Transaction;
  function delete() : Delete;
  function export() : Promise<Void>;
  function getSchema() : npm.lf.schema.Database;
  // TODO: reserved word as function name?
  // function import(data : Dynamic<Dynamic>) : Promise<Void>;
  function insertOrReplace() : Insert;
  function insert() : Insert;
  function observe(query : Select, callback : Dynamic) : Void;
  // TODO: select(...columns: schema.Column[]): query.Select
  function unobserve(query : Select, callback : Dynamic) : Void;
  function update(table : Table) : Update;
}
