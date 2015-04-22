package npm.aws;

import npm.common.Callback;

@:jsRequire("aws-sdk", "S3")
extern class S3 {
  function new() : Void;
  // TODO check return type, params, options, and callback type
  function putObject(params : PutParams, ?optons : {}, callback : Callback<Dynamic>) : Void;
  // TODO check return type, params, options, and callback type
  function upload(params : PutParams, ?optons : {}, callback : Callback<Dynamic>) : Void;
  // TODO check return type, options, and callback type
  function deleteObject(params : DeletetParams, callback : Callback<Dynamic>) : Void;
}
