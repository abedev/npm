package npm;

import npm.awscloudfrontsign.*;

@:jsRequire("aws-cloudfront-sign")
extern class AWSCloudfrontSign {
  static function getSignedUrl(url : String, options : SignOptions) : String;
  static function getSignedRTMPUrl(domainName : String, s3key : String, options : SignOptions) : SignedRTMPUrl;
}
