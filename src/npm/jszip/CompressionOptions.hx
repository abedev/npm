package npm.jszip;

typedef CompressionOptions = {
  /*
  Any level between 1 (best speed) and 9 (best compression). Only meaningful
  with compression type `Deflate`.
  */
  ?level : Int
}
