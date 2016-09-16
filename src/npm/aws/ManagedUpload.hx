package npm.aws;

@:jsRequire("aws-sdk", "S3.ManagedUpload")
extern class ManagedUpload {
  public function new(opts: ConstructorOptions) {}
  public function send(cb: Dynamic): Void {} // TODO
}

typedef ConstructorOptions = {
  params: PutParams,
  service: Dynamic
}
