package npm.nodemailer;

@:jsRequire("nodemailer-ses-transport")
extern class SesTransport extends TransportOptions {
	@:selfCall function new(?options : SesTransportOptions) : Void;
}
