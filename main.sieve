require "include";
require "fileinto";
require "imap4flags";
require "relational";
require "reject";
require "comparator-i;ascii-numeric";

if header :contains "X-Spam-Flag" "YES"
{
  fileinto "Junk";
  stop;
}

include :personal "alunduil-servers";

include :personal "bugzillas";
include :personal "mailing-lists";

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