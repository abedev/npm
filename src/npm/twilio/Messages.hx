package npm.twilio;

import js.Promise;

extern class Messages {
  public function post(options: MessageOptions): Promise<Message>;
  public function put(options: MessageOptions): Promise<Message>;
  public function create(options: MessageOptions): Promise<Message>;
  public function update(options: MessageOptions): Promise<Message>;
}
