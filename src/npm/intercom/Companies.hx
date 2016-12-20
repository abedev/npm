package npm.intercom;

import js.Promise;

extern class Companies {
  public function create(options: CompanyCreateOptions): Promise<Dynamic>; // TODO return type
  public function update(options: CompanyCreateOptions): Promise<Dynamic>; // TODO return type
  public function list(): Promise<Array<Company>>; // TODO return type
  public function listBy(options: {?tag_id: String, ?segment: String}): Promise<Array<Company>>; // TODO return type
  public function find(options: {id: String}): Promise<Array<Company>>; // TODO return type
  public function delete(options: {id: String}): Promise<Dynamic>; // TODO return type
}

typedef CompanyCreateOptions = {
  ?company_id: String,
  ?name: String,
  ?custom_attributes: {}
}

typedef Company = {

}
