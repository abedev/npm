package npmx.common;

import js.Error as JSError;

import thx.Error;
import thx.promise.Promise;

import npm.common.Callback;

class Promisifiy {
  public static function promisify<TReq, TResp>(f : TReq -> Callback<TResp> -> Void) : TReq -> Promise<TResp> {
    return function(req : TReq) : Promise<TResp> {
      return Promise.create(function(resolve, reject) {
        f(req, function(err : Null<JSError>, data : TResp) : Void {
          if (err != null) {
            reject(Error.fromDynamic(err));
          } else {
            resolve(data);
          }
        });
      });
    };
  }
}

class PromisifiyNullReq {
  public static function promisify<TReq, TResp>(f : ?TReq -> Callback<TResp> -> Void) : ?TReq -> Promise<TResp> {
    return function(?req : TReq) : Promise<TResp> {
      return Promise.create(function(resolve, reject) {
        f(req, function(err : Null<JSError>, data : TResp) : Void {
          if (err != null) {
            reject(Error.fromDynamic(err));
          } else {
            resolve(data);
          }
        });
      });
    };
  }
}
