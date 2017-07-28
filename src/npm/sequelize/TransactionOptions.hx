package npm.sequelize;

typedef TransactionOptions = {
  ?autocommit: Bool,
  ?type: String,
  ?isolationLevel: String,
  ?deferrable: String
}
