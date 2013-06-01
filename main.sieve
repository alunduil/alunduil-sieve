require "include";
require "fileinto";
require "imap4flags";

if header :contains "Subject" [
  "Return Receipt",
  "Read:",
  "Delivery Notification for:",
  "Empfangsbestätigung (angezeigt) - ",
  "Gelesen:"
  ]
{
  setflag "\\Seen";
  fileinto "Sent";
  stop;
}

if header :contains "X-Spam-Flag" "YES"
{
  fileinto "Junk";
  stop;
}

include :personal "alunduil-servers";

include :personal "mailing-lists";
include :personal "bugzillas";
