package nodemailer;

import npm.NodeMailer;
import npm.nodemailer.InfoResponse;
import npm.nodemailer.MailOptions;
import npm.nodemailer.SesTransport;
import npm.nodemailer.SesTransportOptions;

typedef Params = {
  sesRegion: String,
  emailAddress: String,
  attachmentPath: String
};

class IntTest {
  public static function main() {
    var params = getParams();

    var transportOptions : SesTransportOptions = {
      region: params.sesRegion
    };

    var transport = NodeMailer.createTransport(new SesTransport(transportOptions));

    var mailOptions : MailOptions = {
      from: params.emailAddress,
      sender: params.emailAddress,
      to: params.emailAddress,
      subject: "test email",
      text: "test text",
      html: "<h1>test html</h1>",
      attachments: [
        {
          path: params.attachmentPath
        }
      ]
    };

    trace('Sending email to: ${params.emailAddress} with attachment: ${params.attachmentPath}');
    transport.sendMail(mailOptions, function(err : js.Error, info : InfoResponse) {
      if (err != null) {
        trace('Failed to send mail');
        trace(err);
        js.Node.process.exit(1);
      } else {
        trace('Mail sent successfully');
        js.Node.process.exit(0);
      }
    });
  }

  static function getParams() : Params {
    var args = js.Node.process.argv;
    if (args.length != 5) {
      usage();
    }
    for (arg in args) {
      if (arg == "help" || arg == "-h" || arg == "--help") {
        usage();
      }
    }
    return {
      sesRegion: args[2],
      emailAddress: args[3],
      attachmentPath: args[4]
    };
  }

  static function usage() {
    trace('Usage: node ${Sys.args()[1]} <ses-region> <email-address> <attachment-path>');
    trace('');
    trace('e.g. `node ${Sys.args()[1]} us-west-2 jdoe@example.com ./some-dir/example.pdf');
    trace('');
    trace('This test uses AWS SES to send an email.  AWS credentials must be set as env vars or in a ~/.aws/credentials folder.');
    trace('');
    js.Node.process.exit(1);
  }
}
