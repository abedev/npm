package npm.intercom;

import js.Promise;

extern class Users {
  public function create(options: UserCreateOptions): Promise<Dynamic>; // TODO return type
  public function list(): Promise<Array<User>>; // TODO return type
  public function listBy(options: {?tag_id: String, ?segment: String}): Promise<Array<User>>; // TODO return type
  @:overload(function(options: {email: String}): Promise<Array<User>> {})
  @:overload(function(options: {user_id: String}): Promise<Array<User>> {})
  public function find(options: {id: String}): Promise<Array<User>>; // TODO return type
  public function delete(options: {id: String}): Promise<Dynamic>; // TODO return type
}

typedef UserCreateOptions = {
  email: String,
  ?custom_attributes: {}
}

typedef User = {

}
