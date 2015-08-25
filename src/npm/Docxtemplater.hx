package npm;

@:jsRequire("docxtemplater")
extern class Docxtemplater {
  function new(?content : String) : Void;

  @:overload(function(zip : JSZip) : Void {})
  @:overload(function(buffer : js.node.Buffer) : Void {})
  function load(fileContent : String) : Void;
  function setOptions(options : Dynamic) : Void;
  function setData(data : {}) : Void;
  function render() : Void;
  function getZip() : JSZip;
  @:overload(function() : String {})
  function getFullText(path : String) : String;
  function getTags() : Array<{ file : String, vars : {}}>;
}
