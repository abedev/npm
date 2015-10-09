package npm;

import js.Error;
import npm.mssql.ConnectionConfig;
import npm.mssql.DataType;

@:jsRequire("mssql")
extern class MSSql {
  static function VarChar(length : Int) : DataType;
  static function NVarChar(length : Int) : DataType;
  static function Text(length : Int) : DataType;
  static function Int() : DataType;
  static function BigInt() : DataType;
  static function TinyInt() : DataType;
  static function SmallInt() : DataType;
  static function Bit() : DataType;
  static function Float() : DataType;
  static function Numeric() : DataType;
  static function Decimal() : DataType;
  static function Real() : DataType;
  static function Date() : DataType;
  static function DateTime() : DataType;
  static function DateTime2(scale : Float) : DataType;
  static function DateTimeOffset(scale : Float) : DataType;
  static function SmallDateTime() : DataType;
  static function Time(scale : Float) : DataType;
  static function UniqueIdentifier() : DataType;
  static function SmallMoney() : DataType;
  static function Money() : DataType;
  static function Binary(length : Int) : DataType;
  static function VarBinary(length : Int) : DataType;
  static function Image() : DataType;
  static function Xml() : DataType;
  static function Char(length : Int) : DataType;
  static function NChar(length : Int) : DataType;
  static function NText() : DataType;
  static function TVP(tvpType : Dynamic) : DataType;
  static function UDT() : DataType;
  static function Geography() : DataType;
  static function Geometry() : DataType;

  static function connect(config : ConnectionConfig, callback: Error -> Void) : Void;
  static function close(callback : Error -> Void) : Void;
  static function on(event : String, callback : Dynamic -> Void) : Void;
  static function init() : Void;
}
