package npm.nodemailer;

import npm.common.Callback;

extern class Transporter {
	function sendMail(options : MailOptions, callback : Callback<InfoResponse>) : Void;
	// TODO
	// function use();
}
