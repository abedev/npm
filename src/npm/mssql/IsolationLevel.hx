package npm.mssql;

extern class IsolationLevel {
  public static var READ_UNCOMMITTED(default, never) : Int;
  public static var READ_COMMITTED(default, never) : Int;
  public static var REPEATABLE_READ(default, never) : Int;
  public static var SERIALIZABLE(default, never) : Int;
  public static var SNAPSHOT(default, never) : Int;
}
