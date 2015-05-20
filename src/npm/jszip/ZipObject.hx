package npm.jszip;

extern class ZipObject {
  /*
  the absolute path of the file
  */
  var name : String;

  /*
  true if this is a directory
  */
  var dir : Bool;

  /*
  the last modification date
  */
  var date : Date;

  /*
  the comment for this file
  */
  var comment : String;

  /*
  The UNIX permissions of the file, if any.
  Format: 16 bits number
  */
  var unixPermissions : Int;

  /*
  The DOS permissions of the file, if any.
  Format: 6 bits number
  */
  var dosPermissions : String;

  /*
  the options of the file.
  */
  var options : ZipObjectOptions;

  /*
  the content as an unicode string.
  */
  function asText() : String;

  /*
  the content as binary string.
  */
  function asBinary() : String;

  function asArrayBuffer() : js.html.ArrayBuffer;

  function asUint8Array() : js.html.Uint8Array;

  function asNodeBuffer() : js.node.Buffer;
}
