package npm.pg;

typedef ClientConfig = { > ConnectConfig,
  ?ssl : Bool,
  ?application_name : String,
  ?fallback_application_name : String
};
