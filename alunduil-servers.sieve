require "fileinto";
require "regex";
require "variables";

if header :contains "Received" "dornick.alunduil.com"
{
  fileinto "INBOX.servers.alunduil.dornick";
  stop;
}

if header :contains "Subject" "Status Report:"
{
  fileinto "INBOX.servers.alunduil.gladia";
  stop;
}

if header :regex "Subject" "([-a-z0-9.]+)\.test\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.servers.alunduil.test.${hostname}";
  stop;
}

if address :domain :regex [ "from", "to", "sender" ] "([-a-z0-9.]+)\.test\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.servers.alunduil.test.${hostname}";
  stop;
}

if header :regex "Subject" "([-a-z0-9.]+)\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.servers.alunduil.${hostname}";
  stop;
}

if address :domain :regex [ "from", "to", "sender" ] "([-a-z0-9.]+)\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.servers.alunduil.${hostname}";
  stop;
}

