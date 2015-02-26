package npm.sequelize;

import thx.core.Nil;

extern class ModelInstance<T : ModelInstance<T>> {
  var createdAt : Date;
  var updatedAt : Date;

  function isNewRecord() : Bool;
  function Model() : Model<T>;
  function sequelize() : Sequelize;
  function isDeleted() : Bool;
  function values() : Dynamic;
  function isDirty() : Bool;
  function primaryKeyValues() : Dynamic;
  function getDataValue(key : String) : Dynamic;
  function setDataValue(key : String, value : Dynamic) : Void;
  @:overload(function(?options : { plain : Bool }) : Dynamic {})
  function get(key : String, ?options : { plain : Bool }) : Dynamic;
  function set(key : String, value : Dynamic, ?options : { ?raw : Bool, ?reset : Bool, ?include : {} }) : Dynamic;
  @:overload(function() : Array<Bool> {})
  function changed(key : String) : Bool;
  function previous(key : String) : Dynamic;

  function save(?options : { ?fields : {}, ?silent : Bool, ?validate : Bool, ?transaction : Dynamic }) : Promise<Dynamic>; // either ValidationError or ModelInstance
  function reload() : Promise<T>;
  function update(updated : Dynamic, options : Dynamic) : Promise<T>;
  function destroy() : Promise<Nil>;
}
