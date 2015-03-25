package npm;

import npm.nodemailer.*;

@:jsRequire("nodemailer")
extern class NodeMailer {
	static function createTransport(?options : EitherType<SMTPOptions, TransportOptions>) : Transporter;
}
