package npm.winston.transports;

typedef ConsoleOptions = { > TransportOptions,
  ?json: Bool,
  ?stringify: Bool,
  ?prettyPrint: Bool,
  ?depth: Int,
  ?humanReadableUnhandledException: Bool,
  ?showLevel: Bool,
  ?formatter: Function,
  ?stderrLevels: Array<String>,
};
