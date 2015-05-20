package npm.jszip;

import haxe.extern.EitherType;

typedef GenerateOptions = {
  ?base64 : Bool,
  ?compression : String,
  ?compressionOptions : CompressionOptions,
  ?type : GenerateType,
  ?comment : String,
  ?mimeType : String,
  ?platform : EitherType<Platform, String>
}
