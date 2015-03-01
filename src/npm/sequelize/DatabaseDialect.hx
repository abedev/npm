package npm.sequelize;

@:enum
abstract DatabaseDialect(String) to String {
  var Mysql = "mysql";
  var Mariadb = "mariadb";
  var Sqlite = "sqlite";
  var Postgres = "postgres";
  var Mssql = "mssql";
}