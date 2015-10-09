package npm.mssql;

typedef ConnectionConfig = {
  ?user: String,
  ?password: String,
  ?server: String,
  ?port: Int,
  ?database: String,
  ?driver: String,
  ?stream: Bool,
  ?parseJSON: Bool,
  ?debug: Bool,
  ?options: {
    ?encrypt: Bool,
    ?instanceName: String,
  }
};
