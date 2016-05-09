package npm.arango;

typedef DatabaseUser = {
  username : String,
  ?passwd : String,
  ?active : Bool,
  ?extra : {}
}
