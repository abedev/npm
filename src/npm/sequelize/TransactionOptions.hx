package npm.sequelize;

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

typedef TransactionOptions = {
  ?autocommit: Bool,
  ?type: String,
  ?isolationLevel: String,
  ?deferrable: String
}
