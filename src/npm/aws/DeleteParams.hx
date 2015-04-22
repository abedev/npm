package npm.aws;

import haxe.extern.EitherType;
import js.node.Buffer;
import js.node.stream.Readable;

typedef DeleteParams = {
  Bucket : String,
  Key : String,
  /*
  he concatenation of the authentication device's serial number, a space, and the value that is displayed on your authentication device.
  */
  ?MFA : String,
  /*
  VersionId used to reference a specific version of the object.
  */
  ?VersionId : String,
  /*
  Confirms that the requester knows that she or he will be charged for the request.

  Bucket owners need not specify this parameter in their requests. Documentation on downloading objects from requester pays buckets can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html

  Possible values include:

    * "requester"

  */
  ?RequestPayer : String
}
