package npm.aws;

import haxe.extern.EitherType;

@:jsRequire("aws-sdk", "Config")
extern class Config {
  //Whether to compute checksums for payload bodies when the service accepts it (currently supported in S3 only).
  var computeChecksums : Bool;
  //Whether types are converted when parsing response data.
  var convertResponseTypes : Bool;
  //The AWS credentials to sign requests with.
  // TODO
  //var credentials : Credentials;
  //A set of options to pass to the low-level HTTP request.
  var httpOptions : Dynamic<String>;
  //An object that responds to .write() (like a stream) or .log() (like the console object) in order to log information about requests.
  // TODO
  //var logger : (write, #log);
  //The maximum amount of redirects to follow for a service request.
  var maxRedirects : Int;
  //The maximum amount of retries to perform for a service request.
  var maxRetries : Int;
  //Whether input parameters should be validated against the operation description before sending the request.
  var paramValidation : Bool;
  //The region to send service requests to.
  var region : npm.AWS;
  //Whether the provided endpoint addresses an individual bucket (false if it addresses the root API endpoint).
  var s3BucketEndpoint : Bool;
  //Whether to force path style URLs for S3 objects.
  var s3ForcePathStyle : Bool;
  //The signature version to sign requests with (overriding the API configuration).
  var signatureVersion : String;
  //Whether SSL is enabled for requests.
  var sslEnabled : Bool;
  //An offset value in milliseconds to apply to all signing times.
  var systemClockOffset : Float;
  // your AWS access key ID.
  var accessKeyId : String;
  // your AWS secret access key.
  var secretAccessKey : String;
  // the optional AWS session token to sign requests with.
  // TODO
  //var sessionToken : Credentials;
  // the URL to proxy requests through
  var proxy : String;
  // the Agent object to perform HTTP requests with. Used for connection pooling. Defaults to the global agent (http.globalAgent) for non-SSL connections. Note that for SSL connections, a special Agent object is used in order to enable peer certificate verification. This feature is only available in the Node.js environment.
  // TODO
  //var agent : Agent;
  // Sets the socket to timeout after timeout milliseconds of inactivity on the socket. Defaults to two minutes (120000).
  var timeout : Int;
  // Whether the SDK will send asynchronous HTTP requests. Used in the browser environment only. Set to false to send requests synchronously. Defaults to true (async on).
  var xhrAsync : Bool;
  // Sets the "withCredentials" property of an XMLHttpRequest object. Used in the browser environment only. Defaults to false.
  var xhrWithCredentials : Bool;
  // a String in YYYY-MM-DD format (or a date) that represents the latest possible API version that can be used in all services (unless overridden by apiVersions). Specify 'latest' to use the latest possible version.
  var apiVersion : EitherType<String, Date>;
  // a map of service identifiers (the lowercase service class name) with the API version to use when instantiating a service. Specify 'latest' for each individual that can use the latest available version.
  var apiVersions : Dynamic<EitherType<String, Date>>;
  // an object that responds to .write() (like a stream) or .log() (like the console object) in order to log information about requests
  // TODO
  //var logger : (write, #log);

  @:overload(function(options : ConfigOptions, allowUnknownKeys : Bool) : Void {})
  function update(options : ConfigOptions) : Void;
}
