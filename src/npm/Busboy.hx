package npm;

import npm.busboy.*;
import js.node.stream.Readable;
import js.node.stream.Writable;

@:jsRequire("busboy")
extern class Busboy extends Writable<Busboy> {
  function new(options : Options) : Void;

  inline function onFile(callback : String -> Readable<Dynamic> -> String -> String -> String -> Void) : Void
    this.on((Event.File : String), callback);

  inline function onField(callback : String -> String -> Bool -> Bool -> Void) : Void
    this.on((Event.Field : String), callback);

  inline function onFinish(callback : Void -> Void) : Void
    this.on((Event.Finish : String), callback);

  inline function onPartsLimit(callback : Void -> Void) : Void
    this.on((Event.PartsLimit : String), callback);

  inline function onFilesLimit(callback : Void -> Void) : Void
    this.on((Event.FilesLimit : String), callback);

  inline function onFieldsLimit(callback : Void -> Void) : Void
    this.on((Event.FieldsLimit : String), callback);
}
