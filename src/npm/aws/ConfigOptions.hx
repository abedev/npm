package npm.aws;

import haxe.extern.EitherType;

typedef ConfigOptions = {
  // your AWS access key ID.
  ?accessKeyId : String,
  // your AWS secret access key.
  ?secretAccessKey : String,
  // the optional AWS session token to sign requests with.
  // TODO
  //?sessionToken : Credentials,
  // the AWS credentials to sign requests with. You can either specify this object, or specify the accessKeyId and secretAccessKey options directly.
  // TODO
  //?credentials : Credentials,
  // the provider chain used to resolve credentials if no static credentials property is set.
  // TODO
  //?credentialProvider : CredentialProviderChain,
  // the region to send service requests to. See region for more information.
  ?region : String,
  // the maximum amount of retries to attempt with a request. See maxRetries for more information.
  ?maxRetries : Int,
  // the maximum amount of redirects to follow with a request. See maxRedirects for more information.
  ?maxRedirects : Int,
  // whether to enable SSL for requests.
  ?sslEnabled : Bool,
  // whether parameter validation is on.
  ?paramValidation : Bool,
  // whether to compute checksums for payload bodies when the service accepts it (currently supported in S3 only)
  ?computeChecksums : Bool,
  // whether types are converted when parsing response data. Currently only supported for JSON based services. Turning this off may improve performance on large response payloads. Defaults to true.
  ?convertResponseTypes : Bool,
  // whether to force path style URLs for S3 objects.
  ?s3ForcePathStyle : Bool,
  // whether the provided endpoint addresses an individual bucket (false if it addresses the root API endpoint). Note that setting this configuration option requires an endpoint to be provided explicitly to the service constructor.
  ?s3BucketEndpoint : Bool,
  // A set of options to pass to the low-level HTTP request. Currently supported options are:
  ?httpOptions : Dynamic<String>,
  // the URL to proxy requests through
  ?proxy : String,
  // the Agent object to perform HTTP requests with. Used for connection pooling. Defaults to the global agent (http.globalAgent) for non-SSL connections. Note that for SSL connections, a special Agent object is used in order to enable peer certificate verification. This feature is only available in the Node.js environment.
  // TODO
  //?agent : Agent,
  // Sets the socket to timeout after timeout milliseconds of inactivity on the socket. Defaults to two minutes (120000).
  ?timeout : Int,
  // Whether the SDK will send asynchronous HTTP requests. Used in the browser environment only. Set to false to send requests synchronously. Defaults to true (async on).
  ?xhrAsync : Bool,
  // Sets the "withCredentials" property of an XMLHttpRequest object. Used in the browser environment only. Defaults to false.
  ?xhrWithCredentials : Bool,
  // a String in YYYY-MM-DD format (or a date) that represents the latest possible API version that can be used in all services (unless overridden by apiVersions). Specify 'latest' to use the latest possible version.
  ?apiVersion : EitherType<String, Date>,
  // a map of service identifiers (the lowercase service class name) with the API version to use when instantiating a service. Specify 'latest' for each individual that can use the latest available version.
  ?apiVersions : Dynamic<EitherType<String, Date>>,
  // an object that responds to .write() (like a stream) or .log() (like the console object) in order to log information about requests
  // TODO
  //?logger : (write, #log),
  // an offset value in milliseconds to apply to all signing times. Use this to compensate for clock skew when your system may be out of sync with the service time. Note that this configuration option can only be applied to the global config object and cannot be overridden in service-specific configuration. Defaults to 0 milliseconds.
  ?systemClockOffset : Float,
  // the signature version to sign requests with (overriding the API configuration). Possible values are: 'v2', 'v3', 'v4'.
  ?signatureVersion : String
}