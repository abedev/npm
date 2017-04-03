package npm.twilio;

@:jsRequire("twilio", "RestClient")
extern class RestClient {
  public var sms(default, null): { messages: Messages };

  public function new(accountSid: String, authToken: String) : Void;
}
