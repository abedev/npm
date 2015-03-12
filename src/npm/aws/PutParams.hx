package npm.aws;

import haxe.extern.EitherType;
import js.node.Buffer;
import js.node.stream.Readable;

typedef PutParams = {
  /*
  // TODO define abstract
  The canned ACL to apply to the object. Possible values include:
  "private"
  "public-read"
  "public-read-write"
  "authenticated-read"
  "bucket-owner-read"
  "bucket-owner-full-control"
  */
  ?ACL : String,
  // TODO string, blob, typed array
  ?Body : EitherType<Buffer, Readable<Dynamic>>,
  ?Bucket : String,
  /*
  Specifies caching behavior along the request/reply chain.
  */
  ?CacheControl : String,
  /*
  Specifies presentational information for the object.
  */
  ?ContentDisposition : String,
  /*
  Specifies what content encodings have been applied to the object and thus what decoding mechanisms must be applied to obtain the media-type referenced by the Content-Type header field.
  */
  ?ContentEncoding : String,
  /*
  The language the content is in.
  */
  ?ContentLanguage : String,
  /*
  Size of the body in bytes. This parameter is useful when the size of the body cannot be determined automatically.
  */
  ?ContentLength : Int,
  ?ContentMD5 : String,
  /*
  A standard MIME type describing the format of the object data.
  */
  ?ContentType : String,
  /*
  The date and time at which the object is no longer cacheable.
  */
  ?Expires : Date,
  /*
  Gives the grantee READ, READ_ACP, and WRITE_ACP permissions on the object.
  */
  ?GrantFullControl : String,
  /*
  Allows grantee to read the object data and its metadata.
  */
  ?GrantRead : String,
  /*
  Allows grantee to read the object ACL.
  */
  ?GrantReadACP : String,
  /*
  Allows grantee to write the ACL for the applicable object.
  */
  ?GrantWriteACP : String,
  ?Key : String,
  /*
  A map of metadata to store with the object in S3.
  */
  ?Metadata : Dynamic<String>,
  /*
  The Server-side encryption algorithm used when storing this object in S3 (e.g., AES256, aws:kms). Possible values include:
  "AES256"
  */
  ?ServerSideEncryption : String,
  /*
  The type of storage to use for the object. Defaults to 'STANDARD'. Possible values include:
  "STANDARD"
  "REDUCED_REDUNDANCY"
  */
  ?StorageClass : String,
  /*
  If the bucket is configured as a website, redirects requests for this object to another object in the same bucket or to an external URL. Amazon S3 stores the value of this header in the object metadata.
  */
  ?WebsiteRedirectLocation : String,
  /*
  Specifies the algorithm to use to when encrypting the object (e.g., AES256, aws:kms).
  */
  ?SSECustomerAlgorithm : String,
  /*
  Specifies the customer-provided encryption key for Amazon S3 to use in encrypting data. This value is used to store the object and then it is discarded; Amazon does not store the encryption key. The key must be appropriate for use with the algorithm specified in the x-amz-server-side​-encryption​-customer-algorithm header.
  */
  ?SSECustomerKey : String,
  /*
  Specifies the 128-bit MD5 digest of the encryption key according to RFC 1321. Amazon S3 uses this header for a message integrity check to ensure the encryption key was transmitted without error.
  */
  ?SSECustomerKeyMD5 : String,
  /*
  Specifies the AWS KMS key ID to use for object encryption. All GET and PUT requests for an object protected by AWS KMS will fail if not made via SSL or using SigV4. Documentation on configuring any of the officially supported AWS SDKs and CLI can be found at http://docs.aws.amazon.com/AmazonS3/latest/dev/UsingAWSSDK.html#specify-signature-version
  */
  ?SSEKMSKeyId : String
}
