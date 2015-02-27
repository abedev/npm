package npm.sequelize;

import haxe.EitherType;
import thx.core.Nil;

extern class Model<T : ModelInstance<T>> {
  function sync() : Promise<Model<T>>;
  function drop() : Promise<Nil>; // TODO Nil?
  function find(query : EitherType<Int, QueryOptions>) : Promise<T>;
  function findAll(?query : QueryOptions) : Promise<Array<T>>;
  function findOne(query : EitherType<Int, QueryOptions>) : Promise<T>;

  inline function findAttributes<TAt>(query : EitherType<Int, QueryOptions>) : Promise<TAt>
    return cast find(query);
  inline function findOneAttributes<TAt>(query : EitherType<Int, QueryOptions>) : Promise<TAt>
    return cast findOne(query);

  function build(?defaults : {}) : T;

  function destroy(options : DestroyOptions) : Promise<Nil>;
}

typedef QueryOptions = {
  ?where : Dynamic,
  ?attributes : Array<Dynamic>
}

typedef DestroyOptions = {
  ?where : Dynamic
}