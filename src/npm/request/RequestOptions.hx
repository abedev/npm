package npm.request;

typedef RequestOptions = {
  method : String,
  ?preambleCRLF : Bool,
  ?postambleCRLF : Bool,
  uri : String,
  ?multipart : Dynamic,
  ?auth : {
    user : String,
    pazz : String,
    ?sendImmediately : Bool,
    ?bearer : String
  },
  ?headers : Dynamic<String>
}
