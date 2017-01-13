package npm.sequelize.modelinstance;

import js.Promise;

import npm.sequelize.model.Model;

extern class ModelInstance<T : ModelInstance<T>> {
  var createdAt : Date;
  var updatedAt : Date;

  var isNewRecord(default, null) : Bool;

  function Model() : Model<T>;

  var sequelize(default, null) : Sequelize;

  var isDeleted(default, null) : Bool;

  var values(default, null) : Dynamic;

  var isDirty(default, null) : Bool;

  var primaryKeyValues(default, null) : Dynamic;

  function getDataValue(key : String) : Dynamic;

  function setDataValue(key : String, value : Dynamic) : Void;

  @:overload(function(?options : { plain : Bool }) : Dynamic {})
  function get(key : String, ?options : { plain : Bool }) : Dynamic;

  @:overload(function(values : {}, ?options : ModelInstanceSetOptions) : Dynamic {})
  function set(key : String, value : Dynamic, ?options : ModelInstanceSetOptions) : Dynamic;

  function changed(?key : String) : Bool;

  function previous(?key : String) : Dynamic;

  function save(?options : ModelInstanceSaveOptions) : Promise<T>; // either ValidationError or ModelInstance

  function reload() : Promise<T>;

  function validate(?options: ModelInstanceValidateOptions) : Promise<Dynamic>;

  function update(updates : {}, options : ModelInstanceSaveOptions) : Promise<T>; // TODO

  function destroy(?options : ModelInstanceDestroyOptions): Promise<Void>;

  function equals(other : ModelInstance<T>) : Bool;

  function equalsOneOf(others : Array<ModelInstance<T>>) : Bool;

  function toJSON() : {};
}
