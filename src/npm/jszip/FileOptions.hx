package npm.jszip;

typedef FileOptions = {
  /*
  set to `true` if the data is base64 encoded. For example image data from a `<canvas>` element. Plain text and HTML do not need this option.
  */
  ?base64 : Bool,
  /*
  set to `true` if the data should be treated as raw content, `false` if this is a text. If base64 is used, this defaults to `true`, if the data is not a string, this will be set to `true`.
  */
  ?binary : Bool,
  /*
  the last modification date.
  */
  ?date : Date,
  /*
  If set, specifies compression method to use for this specific file. If not, the default file compression will be used
  */
  ?compression : Compression,
  /*
  the options to use when compressing the file
  */
  ?compressionOptions : CompressionOptions,
  /*
  The comment for this file.
  */
  ?comment : String,
  /*
  Set to `true` if (and only if) the input is a "binary string" and has already been prepared with a `0xFF` mask.
  */
  ?optimizedBinaryString : Bool,
  /*
  Set to true if folders in the file path should be automatically created, otherwise there will only be virtual folders that represent the path to the file.
  */
  ?createFolders : Bool,
  /*
  The UNIX permissions of the file, if any.
  */
  ?unixPermissions : Int,
  /*
  The DOS permissions of the file, if any.
  */
  ?dosPermissions : Int,
  /*
  Set to true if this is a directory and content should be ignored.
  */
  ?dir : Bool
}
