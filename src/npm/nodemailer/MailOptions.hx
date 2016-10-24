package npm.nodemailer;

import haxe.extern.EitherType;

typedef MailOptions = {
  from : Email,
  ?sender : Email,
  to : Email,
  ?cc : Email,
  ?bcc : EitherType<String, Array<Email>>,
  ?replyTo : Email,
  ?inReplyTo : String,
  ?references : EitherType<String, Array<String>>,
  subject : String,
  text : String,
  ?html : String,
  ?headers : EitherType<Dynamic<String>, Array<{key : String, value : String}>>,
  ?attachments: Array<Attachment>,
  // alternatives
  // envelope
  ?messageId : String,
  ?date : Date,
  ?encoding : String
}
