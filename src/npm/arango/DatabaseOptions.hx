package npm.arango;

typedef DatabaseOptions = {
  ?url : String,
  ?databaseName : String,
  ?arangoVersion : Int,
  ?headers : {},
  ?agent : Agent;
  ?agentOptions: {
    ?maxSockets: Int,
    ?keepAlive: Bool,
    ?keepAliveMsecs: Int
  }
}
