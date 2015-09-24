package npm.mssql;

extern class IsolationLevel {
  public static var READ_UNCOMMITTED(default, never) = 0x01;
  public static var READ_COMMITTED(default, never) = 0x02;
  public static var REPEATABLE_READ(default, never) = 0x03;
  public static var SERIALIZABLE(default, never) = 0x04;
  public static var SNAPSHOT(default, never) = 0x05;
}
