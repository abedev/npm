package npm.nodemailer;

import haxe.extern.EitherType;

typedef MailOptions = {
	from : EitherType<String, Email>,
	?sender : EitherType<String, Email>,
	to : EitherType<String, Email>,
	?cc : EitherType<String, Email>,
	?bcc : EitherType<String, Array<Email>>,
	?replyTo : EitherType<String, Email>,
	?inReplyTo : String,
	?references : EitherType<String, Array<String>>,
	subject : String,
	text : String,
	?html : String,
	?headers : EitherType<Dynamic<String>, Array<{key : String, value : String}>>,
	// attachments
	// alternatives
	// envelope
	?messageId : String,
	?date : Date,
	?encodint : String
}
