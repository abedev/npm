package npm.busboy;

@:enum
abstract Event(String) to String {
  public var File = "file";
  public var Field = "field";
  public var Finish = "finish";
  public var PartsLimit = "partsLimit";
  public var FilesLimit = "filesLimit";
  public var FieldsLimit = "fieldsLimit";
}
