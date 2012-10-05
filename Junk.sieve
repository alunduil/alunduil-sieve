require "fileinto";
require "regex";
require "reject";

# Junk marked by spamassassin.
if anyof ( 
  header :contains "X-Spam-Flag" "YES",
  header :contains "Subject" "*****SPAM*****"
  )
{
  fileinto "Junk";
  stop;
}

# Reject spam from admin@dakotaysa.com.
if address :is ["From"] "admin@dakotaysa.com" {
  reject "Please add a method to unsubscribe or I will begin forwarding these messages to appropriate blackhole lists.";
}
