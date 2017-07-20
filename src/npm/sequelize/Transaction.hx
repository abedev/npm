package npm.sequelize;

import js.Promise;

extern class Transaction {
  function commit() : Promise<Void>;
  function rollback() : Promise<Transaction>;
}
