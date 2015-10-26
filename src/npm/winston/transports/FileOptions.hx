package npm.winston.transports;

typedef FileOptions = { > TransportOptions,
  ?filename: String,
  ?maxsize: Int,
  ?maxFiles: Int,
  //?stream: js.node.stream.Writable,
  ?json: Bool,
  ?eol: String,
  ?prettyPrint: Bool,
  ?depth: Int,
  ?logstash: Bool,
  ?showLevel: Bool,
  ?formatter: haxe.Constraints.Function,
  ?tailable: Bool,
  ?maxRetries: Int,
  ?zippedArchive: Bool,
};
