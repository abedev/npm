package npm.aws;

import haxe.extern.EitherType;

typedef GetObjectOptions = {
  Bucket : String,
  Key : String,
  ?IfMatch : String,
  ?IfModifiedSince : EitherType<Date, EitherType<String, Float>>,
  ?IfNoneMatch : String,
  ?IfUnmodifiedSince : EitherType<Date, EitherType<String, Float>>,
  ?Range : String,
  ?RequestPayer : String,
  ?ResponseCacheControl : String,
  ?ResponseContentDisposition : String,
  ?ResponseContentEncoding : String,
  ?ResponseContentLanguage : String,
  ?ResponseContentType : String,
  ?ResponseExpires : EitherType<Date, EitherType<String, Float>>,
  ?SSECustomerAlgorithm : String,
  ?SSECustomerKey : String,
  ?SSECustomerKeyMD5 : String,
  ?VersionId : String
}
