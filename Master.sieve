require ["include"];
require ["fileinto"];

# Junk Handler
include :personal "Junk.sieve";

# Personal Messages
include :personal "Alunduil Servers.sieve";
include :personal "Personal Mailing Lists.sieve";
include :personal "Projects Bugzillas.sieve";
include :personal "Miscellaneous.sieve";

# Return Receipts
if anyof (
  header :contains "Subject" "Return Receipt",
  header :contains "Subject" "Read: ",
  header :contains "Subject" "Delivery Notification for:"
  )
{
  fileinto "Sent";
  stop;
}
