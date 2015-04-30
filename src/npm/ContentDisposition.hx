package npm;

import npm.contentdisposition.*;

@:jsRequire("content-disposition")
extern class ContentDisposition {
  @:selfCall static call get(filename : String, ?options : Options) : String;
}
