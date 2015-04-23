package npm;

import npm.busboy.*;
import js.node.stream.Readable;
import js.node.stream.Writable;

@:jsRequire("busboy")
extern class Busboy extends Writable<Busboy> {
  function new(options : Options) : Void;

  inline function onFile(callback : String -> Readable<Dynamic> -> String -> String -> String -> Void) : Busboy {
    this.on((Event.File : String), callback);
    return this;
  }

  inline function onField(callback : String -> String -> Bool -> Bool -> Void) : Busboy {
    this.on((Event.Field : String), callback);
    return this;
  }

  inline function onFinish(callback : Void -> Void) : Busboy {
    this.on((Event.Finish : String), callback);
    return this;
  }

  inline function onPartsLimit(callback : Void -> Void) : Busboy {
    this.on((Event.PartsLimit : String), callback);
    return this;
  }

  inline function onFilesLimit(callback : Void -> Void) : Busboy {
    this.on((Event.FilesLimit : String), callback);
    return this;
  }

  inline function onFieldsLimit(callback : Void -> Void) : Busboy {
    this.on((Event.FieldsLimit : String), callback);
    return this;
  }
}
