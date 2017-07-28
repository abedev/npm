package npm.sequelize;

import js.Promise;

typedef ISOLATION_LEVELS = {
  READ_UNCOMMITTED : String,
  READ_COMMITTED : String,
  REPEATABLE_READ : String,
  SERIALIZABLE : String
};

typedef TYPES = {
  DEFERRED : String,
  IMMEDIATE : String,
  EXCLUSIVE : String
};

extern class Transaction {
  public static var ISOLATION_LEVELS : ISOLATION_LEVELS;
  public static var TYPES : TYPES;

  function new(sequelize : Sequelize, options: TransactionOptions);

  function commit() : Promise<Void>;
  function rollback() : Promise<Transaction>;
}
