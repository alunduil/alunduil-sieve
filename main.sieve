require "include";
require "fileinto";
require "imap4flags";

if header :contains "Subject" [
  "Return Receipt",
  "Read:",
  "Delivery Notification for:"
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

include :personal "alunduil-servers.sieve";

include :personal "mailing-lists.sieve";
include :personal "bugzillas.sieve";
