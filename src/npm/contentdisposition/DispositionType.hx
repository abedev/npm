package npm.contentdisposition;

@:enum
abstract DispositionType(String) from String to String {
  public var Attachment = "attachment";
  public var Inline = "inline";
}
