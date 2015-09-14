package npm.docxtemplater;

extern class Xmltemplater {
  function new(?content : String, ?options : { ?encoding : String, ?flag : String }) : Void;

  @:overload(function(zip : JSZip, ?options : { ?encoding : String, ?flag : String }) : Void {})
  @:overload(function(buffer : js.node.Buffer, ?options : { ?encoding : String, ?flag : String }) : Void {})
  function load(fileContent : String) : Void;
  function setOptions(options : Dynamic) : Void;
  function setData(data : {}) : Void;
  function render() : Void;
  function getZip() : JSZip;
  @:overload(function() : String {})
  function getFullText(path : String) : String;
  function getTags() : Array<{ file : String, vars : {}}>;

  function attachModule(module : Module) : Void;
}
