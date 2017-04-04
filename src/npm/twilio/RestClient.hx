package npm.twilio;

@:jsRequire("twilio", "RestClient")
extern class RestClient {
  public var messages(default, null): Messages;
  public function new(accountSid: String, authToken: String) : Void;
}
