package npm.aws.s3;

import js.node.events.EventEmitter;
import npm.common.Callback;

// https://docs.aws.amazon.com/AWSJavaScriptSDK/latest/AWS/S3/ManagedUpload.html
typedef ManagedUploadOptions = {
  params: PutParams,
  ?queueSize: Int,
  ?partSize: String,
  ?leavePartsOnError: Bool,
  ?service: S3
}

typedef ManagedUploadData = {
  Location: String,
  ETag: String,
  Bucket: String,
  Key: String
}

@:jsRequire("aws-sdk", "S3.ManagedUpload")
extern class ManagedUpload extends EventEmitter<ManagedUpload> {
  public function new(opts: ManagedUploadOptions) {}
  public function send(cb: Callback<ManagedUploadData>): Void {} // TODO
  public function abort() : Void {};
  public function promise() : js.Promise<ManagedUploadData> {};
}

