package npm.winston;

import npm.winston.transports.ITransport;

typedef LoggerOptions = {
  ?transports: Array<ITransport>,
  ?exceptionHandlers: Array<ITransport>,
  ?exitOnError: Bool,
};
