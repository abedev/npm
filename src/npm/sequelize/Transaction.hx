package npm.sequelize;

extern class Transaction {
  function commit() : Transaction;
  function rollback() : Transaction;
}
