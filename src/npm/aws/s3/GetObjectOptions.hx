package npm.aws.s3;

import haxe.extern.EitherType;

typedef GetObjectOptions = {
  Bucket : String,
  Key : String,
  /*
  Return the object only if its entity tag (ETag) is the same as the one
  specified, otherwise return a 412 (precondition failed).
   */
  ?IfMatch : String,
  /*
  Return the object only if it has been modified since the specified time,
  otherwise return a 304 (not modified).
   */
  ?IfModifiedSince : EitherType<Date, EitherType<String, Float>>,
  /*
  Return the object only if its entity tag (ETag) is different from the one
  specified, otherwise return a 304 (not modified).
   */
  ?IfNoneMatch : String,
  /*
  Return the object only if it has not been modified since the specified time,
  otherwise return a 412 (precondition failed).
   */
  ?IfUnmodifiedSince : EitherType<Date, EitherType<String, Float>>,
  /*
  Downloads the specified range bytes of an object. For more information about
  the HTTP Range header, go to
  http://www.w3.org/Protocols/rfc2616/rfc2616-sec14.html#sec14.35.
   */
  ?Range : String,
  /*
  Confirms that the requester knows that she or he will be charged for the
  request. Bucket owners need not specify this parameter in their requests.
  Documentation on downloading objects from requester pays buckets can be found
  at http://docs.aws.amazon.com/AmazonS3/latest/dev/ObjectsinRequesterPaysBuckets.html
  Possible values include:
    * `requester`
   */
  ?RequestPayer : String,
  /*
  Sets the Cache-Control header of the response.
   */
  ?ResponseCacheControl : String,
  /*
  Sets the Content-Disposition header of the response
   */
  ?ResponseContentDisposition : String,
  /*
  Sets the Content-Encoding header of the response.
   */
  ?ResponseContentEncoding : String,
  /*
  Sets the Content-Language header of the response.
   */
  ?ResponseContentLanguage : String,
  /*
  Sets the Content-Type header of the response.
   */
  ?ResponseContentType : String,
  /*
  Sets the Expires header of the response.
   */
  ?ResponseExpires : EitherType<Date, EitherType<String, Float>>,
  /*
  Specifies the algorithm to use to when encrypting the object (e.g., AES256,
  aws:kms).
   */
  ?SSECustomerAlgorithm : String,
  /*
  Specifies the customer-provided encryption key for Amazon S3 to use in
  encrypting data. This value is used to store the object and then it is
  discarded; Amazon does not store the encryption key. The key must be
  appropriate for use with the algorithm specified in the
  x-amz-server-side​-encryption​-customer-algorithm header.
   */
  ?SSECustomerKey : String,
  /*
  Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321.
  Amazon S3 uses this header for a message integrity check to ensure the
  encryption key was transmitted without error.
   */
  ?SSECustomerKeyMD5 : String,
  /*
  VersionId used to reference a specific version of the object.
   */
  ?VersionId : String
}
