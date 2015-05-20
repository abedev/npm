package npm.jszip;

@:enum
abstract Compression(String) to String {
  var Store   = "STORE";
  var Deflate = "DEFLATE";
}
