package npm.sequelize.model;

import npm.sequelize.modelinstance.ModelInstance;

import haxe.extern.EitherType;
import js.Promise;

extern class Model<T : ModelInstance<T>> {
  // Update database by creating table for this model
  function sync(?opts :ModelSyncOptions) : Promise<Model<T>>;

  // Drop table
  function drop(?options : ModelDropOptions) : Promise<Void>;

  // Query functions
  function findAll(?options : ModelFindOptions) : Promise<Array<T>>;
  function findOne(?options : ModelFindOptions) : Promise<T>;
  function findAndCount(?options : ModelFindOptions) : Promise<{ rows: Array<T>, count: Int }>;
  function count(?options : ModelCountOptions) : Promise<Int>;

  // CUD functions
  function build(values : {}, ?options: ModelBuildOptions) : T;
  function create(values : {}, ?options: ModelCreateOptions) : Promise<T>;
  function update(values : {}, options : ModelUpdateOptions) : Promise<Array<Int>>;
  function bulkCreate(items : Array<{}>, ?options : ModelBulkCreateOptions) : Promise<Array<T>>;
  function destroy(options : ModelDestroyOptions) : Promise<Array<Int>>;

  // Attribute functions?
  inline function findAttributes<TAt>(query : EitherType<ModelFindOptions, Int>) : Promise<TAt> {
    return cast findOne(query);
  }
  inline function findOneAttributes<TAt>(query : EitherType<ModelFindOptions, Int>) : Promise<TAt> {
    return cast findOne(query);
  }
  function removeAttribute(attr : String) : Void;

  // Model association config functions
  function hasOne<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelAssociationOptions) : Model<T>;
  function belongsTo<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelAssociationOptions) : Model<T>;
  function hasMany<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelMultiAssociationOptions) : Model<T>;
  function belongsToMany<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelMultiAssociationOptions) : Model<T>;

  // Scope functions
  @:overload(function (options : { method: EitherType<String, Array<Dynamic>> }) : Model<T> {})
  function scope(?options : Array<Dynamic>) : Model<T>;
}
