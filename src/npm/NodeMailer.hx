package npm;

import npm.nodemailer.*;
import haxe.extern.EitherType;

@:jsRequire("nodemailer")
extern class NodeMailer {
	static function createTransport(?options : EitherType<SMTPTransportOptions, EitherType<DirectTransportOptions, TransportOptions>>) : Transporter;
}
