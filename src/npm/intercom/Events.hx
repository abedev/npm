package npm.intercom;

import js.Promise;

extern class Events {
  public function create(options: EventCreateOptions): Promise<Dynamic>; // TODO return type
  public function list(): Promise<Array<Event>>; // TODO return type
  public function listBy(options: {?type: String, ?user_id: String}): Promise<Array<Event>>; // TODO return type
  @:overload(function(options: {email: String}): Promise<Array<Event>> {})
  @:overload(function(options: {user_id: String}): Promise<Array<Event>> {})
  public function find(options: {id: String}): Promise<Array<Event>>; // TODO return type
  public function delete(options: {id: String}): Promise<Dynamic>; // TODO return type
  public function bulk(list: Array<{
    ?create: EventCreateOptions,
    ?delete: {id: String}
  }>): Promise<Dynamic> {}
}

typedef EventCreateOptions = {
  event_name: String,
  created_at: Float,
  user_id: String,
  ?metadata: {}
}

typedef Event = {

}
