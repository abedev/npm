package npm.sequelize;

import haxe.extern.EitherType;
import js.Promise;

extern class Model<T : ModelInstance<T>> {
  function sync() : Promise<Model<T>>;
  function drop(?options : DropOptions) : Promise<Void>; // TODO Void?
  @:overload(function(limit : Int) : Promise<T> {})
  function find(query : ModelQuery) : Promise<T>;
  //findAll([options], [queryOptions]) -> Promise<Array<Instance>>
  function findAll(?query : ModelQuery, ?options : ModelQueryOptions) : Promise<Array<T>>; // TODO options
  @:overload(function(limit : Int, ?options : ModelQueryOptions) : Promise<T> {})
  function findOne(?query : ModelQuery, ?options : ModelQueryOptions) : Promise<T>;
  function count(?query : ModelQuery) : Promise<Int>;
  //findAndCount([findOptions], [queryOptions]) -> Promise<Object>
  //max(field, [options]) -> Promise<Any>
  //min(field, [options]) -> Promise<Any>
  //sum(field, [options]) -> Promise<Number>
  //build(values, [options]) -> Instance
  //create(values, [options]) -> Promise<Instance>
  //findOrInitialize -> Promise<Instance>
  //findOrCreate(options, [queryOptions]) -> Promise<Instance|created>
  //upsert(values, [options]) -> Promise<created>
  function bulkCreate(items : Array<{}>, ?options : ModelQueryOptions) : Promise<Array<T>>;
  function update(values : {}, options : {}) : Promise<Array<Int>>;
  //describe() -> Promise

  inline function findAttributes<TAt>(query : EitherType<ModelQuery, Int>) : Promise<TAt>
    return cast find(query);
  inline function findOneAttributes<TAt>(query : EitherType<ModelQuery, Int>) : Promise<TAt>
    return cast findOne(query);

  function build(?defaults : {}) : T;

  function removeAttribute(attr : String) : Void;

  //destroy(options) -> Promise<undefined>
  function destroy(options : ModelDestroyOptions) : Promise<Array<Int>>;

  function hasOne<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelAssociationOptions) : Void; // check return type
  function belongsTo<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelAssociationOptions) : Void; // check return type
  function hasMany<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelMultiAssociationOptions) : Void; // check return type
  function belongsToMany<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : ModelMultiAssociationOptions) : Void; // check return type

  //aggregate(field, aggregateFunction, [options]) -> Promise<options.dataType|object>

  //schema(schema, [options]) -> this
  //getTableName(options) -> String|Object

  @:overload(function (options : { method: EitherType<String, Array<Dynamic>> }) : Model<T> {})
  function scope(?options : Array<Dynamic>) : Model<T>;
}
