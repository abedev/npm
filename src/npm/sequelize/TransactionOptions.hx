package npm.sequelize;

typedef IsolationLevels = {
  READ_UNCOMMITTED : String,
  READ_COMMITTED : String,
  REPEATABLE_READ : String,
  SERIALIZABLE : String
};

typedef Types = {
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
