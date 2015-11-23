package npm.lf.schema;

import js.Promise;

typedef ConnectOptions = {
  ?onUpgrade : npm.lf.raw.BackStore -> Promise<Void>,
  ?storeType : DataStoreType,
  ?webSqlDbSize : Float
}
