package npm.jszip;

@:enum
abstract GenerateType(String) to String {
  var Base64 = "base64";
  var BinaryString = "string";
  var UInt8Array = "uint8array";
  var ArrayBuffer = "arraybuffer";
  var Blob = "blob";
  var NodeBuffer = "nodebuffer";
}
