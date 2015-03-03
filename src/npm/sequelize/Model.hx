package npm.sequelize;

import haxe.EitherType;
import thx.core.Nil;

extern class Model<T : ModelInstance<T>> {
  function sync() : Promise<Model<T>>;
  function drop(?options : DropOptions) : Promise<Nil>; // TODO Nil?
  function find(query : EitherType<Int, Query>) : Promise<T>;
  //findAll([options], [queryOptions]) -> Promise<Array<Instance>>
  function findAll(?query : Query, ?options : QueryOptions) : Promise<Array<T>>; // TODO options
  function findOne(?query : EitherType<Int, Query>, ?options : QueryOptions) : Promise<T>;
  function count(?query : Query) : Promise<Int>;
  //findAndCount([findOptions], [queryOptions]) -> Promise<Object>
  //max(field, [options]) -> Promise<Any>
  //min(field, [options]) -> Promise<Any>
  //sum(field, [options]) -> Promise<Number>
  //build(values, [options]) -> Instance
  //create(values, [options]) -> Promise<Instance>
  //findOrInitialize -> Promise<Instance>
  //findOrCreate(options, [queryOptions]) -> Promise<Instance|created>
  //upsert(values, [options]) -> Promise<created>
  //bulkCreate(records, [options]) -> Promise<Array<Instance>>
  function update(values : {}, options : {}) :Promise<Array<Int>>
  //describe() -> Promise

  inline function findAttributes<TAt>(query : EitherType<Int, Query>) : Promise<TAt>
    return cast find(query);
  inline function findOneAttributes<TAt>(query : EitherType<Int, Query>) : Promise<TAt>
    return cast findOne(query);

  function build(?defaults : {}) : T;

  //destroy(options) -> Promise<undefined>
  function destroy(options : DestroyOptions) : Promise<Nil>;

  function hasOne<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : AssociationOptions) : Void; // check return type
  function belongsTo<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : AssociationOptions) : Void; // check return type
  function hasMany<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : AssociationOptions) : Void; // check return type
  function belongsToMany<TOther : ModelInstance<TOther>>(other : Model<TOther>, ?options : AssociationOptions) : Void; // check return type

  //aggregate(field, aggregateFunction, [options]) -> Promise<options.dataType|object>

  //schema(schema, [options]) -> this
  //getTableName(options) -> String|Object
  //scope(options*) -> Model
}

typedef Query = {
  ?where : Dynamic,
  ?attributes : Array<String>,
  ?paranoid : Bool,
  //?include : Array<Object | Model> TODO
  //?order : String | Array | Sequelize.fn
  ?limit : Int,
  ?offset : Int,
  //?transaction : Transaction

}

typedef QueryOptions = {
  lock : String
}

typedef DestroyOptions = {
  ?where : Dynamic
}

typedef AssociationOptions = {
  ?hooks : Bool,
  ?as : String,
  ?foreignKey : haxe.EitherType<String, {}>,
  ?onDelete : String,
  ?onUpdate : String,
  ?constraints : Bool
}
