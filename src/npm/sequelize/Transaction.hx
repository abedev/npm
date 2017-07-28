package npm.sequelize;

import npm.sequelize.TransactionOptions;

import js.Promise;

@:jsRequire("sequelize", "Transaction")
extern class Transaction {
  public static var ISOLATION_LEVELS : ISOLATION_LEVELS;
  public static var TYPES : TYPES;

  function new(sequelize : Sequelize, ?options: TransactionOptions);

  function commit() : Promise<Void>;
  function rollback() : Promise<Transaction>;
}
