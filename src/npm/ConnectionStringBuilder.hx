package npm;

@:jsRequire("node-connection-string-builder")
extern class ConnectionStringBuilder {
  function new(?connectionString : String) : Void;

  // methods
  function add(key : String, value : String) : Void;
  function remove(key : String) : Void;
  function getValue(key : String) : String;
  function setValue(key : String, value : String) : Void;
  function containsKey(key : String) : Bool;

  // instance fields
  var connectionString : String;
  var keys(default, null) : Array<String>;

  // helper getter/setter properties
  var applicationIntent : String;
  var applicationName : String;
  var asynchronousProcessing : Bool;
  var attachDBFilename : String;
  var connectTimeout : Int;
  var contextConnection : Bool;
  var currentLanguage : String;
  var dataSource : String;
  var encrypt : Bool;
  var enlist : Bool;
  var failoverPartner : String;
  var initialCatalog : String;
  var integratedSecurity : Bool;
  var loadBalanceTimeout : Int;
  var maxPoolSize : Int;
  var minPoolSize : Int;
  var multipleActiveResultSets : Bool;
  var multiSubnetFailover : Bool;
  var networkLibrary : String;
  var packetSize : Int;
  var password : String;
  var pooling : Bool;
  var replication : Bool;
  var transactionBinding : String;
  var trustServerCertificate : Bool;
  var typeSystemVersion : String;
  var userID : String;
  var userInstance : Bool;
  var workstationID : String;
}
