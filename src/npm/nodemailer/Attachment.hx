package npm.nodemailer;

import haxe.extern.EitherType;
import js.node.Buffer;
import js.node.fs.ReadStream;

// content is one of: String, Buffer, or ReadStream
typedef AttachmentContent = EitherType<String, EitherType<Buffer, ReadStream>>;

typedef Attachment = {
  ?filename: String,
  ?path: String,
  ?content: AttachmentContent,
  ?contentType: String,
  ?encoding: String,
  ?raw: String,
};
