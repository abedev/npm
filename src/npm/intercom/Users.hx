package npm.intercom;

import js.Promise;
import npm.intercom.Companies;

extern class Users {
  public function create(options: UserCreateOptions): Promise<Dynamic>; // TODO return type
  public function update(options: UserCreateOptions): Promise<Dynamic>; // TODO return type
  public function list(): Promise<Array<User>>; // TODO return type
  public function listBy(options: {?tag_id: String, ?segment: String}): Promise<Array<User>>; // TODO return type
  @:overload(function(options: {email: String}): Promise<Array<User>> {})
  @:overload(function(options: {user_id: String}): Promise<Array<User>> {})
  public function find(options: {id: String}): Promise<Array<User>>; // TODO return type
  public function delete(options: {id: String}): Promise<Dynamic>; // TODO return type
}

typedef UserCreateOptions = {
  ?user_id: String,
  ?email: String,
  ?signed_up_at: Float,
  ?name: String,
  ?last_seen_ip: String,
  ?last_seen_user_agent: String,
  ?companies: Array<CompanyCreateOptions>,
  ?last_request_at: Float,
  ?unsubscribed_from_emails: Bool,
  ?update_last_request_at: Bool,
  ?custom_attributes: {},
}

typedef User = {

}
