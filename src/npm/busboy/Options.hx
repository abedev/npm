package npm.busboy;

typedef Options = {
  headers : {},
  ?highWaterMark : Int,
  ?fileHwm : Int,
  ?defCharset : String,
  ?limits : {
    ?fieldNameSize : Int,
    ?fieldSize : Int,
    ?fields : Int,
    ?fileSize : Int,
    ?files : Int,
    ?parts : Int,
    ?headerPairs : Int
  }
}
