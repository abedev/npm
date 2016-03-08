package npm.request;

import haxe.extern.EitherType;

typedef RequestOptions = {>RequestMethodOptions,
  method : String,
  uri : String,
}

typedef RequestMethodOptions = {
  ?preambleCRLF : Bool,
  ?postambleCRLF : Bool,
  ?multipart : Dynamic,
  ?auth : {
    user : String,
    pass : String,
    ?sendImmediately : Bool,
    ?bearer : String
  },
  ?headers : Dynamic<String>,
  ?body : Dynamic,
  ?json : EitherType<Bool, {}>,
  ?encoding : Null<String>
}
