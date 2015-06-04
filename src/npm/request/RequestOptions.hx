package npm.request;

typedef RequestOptions = {
  method : String,
  ?preambleCRLF : Bool,
  ?postambleCRLF : Bool,
  uri : String,
  ?multipart : Dynamic
}
