package npm.gm;

@:enum
abstract Compression(String) to String {
  var None = "None";
  var BZip = "BZip";
  var Fax = "Fax";
  var Group4 = "Group4";
  var JPEG = "JPEG";
  var Lossless = "Lossless";
  var LZW = "LZW";
  var RLE = "RLE";
  var Zip = "Zip";
  var LZMA = "LZMA";
}