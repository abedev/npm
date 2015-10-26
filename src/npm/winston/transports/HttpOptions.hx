package npm.winston.transports;

typedef HttpOptions = {
  ?host: String,
  ?port: Int,
  ?path: String,
  ?auth: {
    username: String,
    password: String
  },
  ?ssl: Bool
};
