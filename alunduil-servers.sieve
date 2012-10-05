require "fileinto";
require "regex";
require "variables";

if header :contains "Received" "dornick.alunduil.com"
{
  fileinto "INBOX.Servers.alunduil.dornick";
  stop;
}

if header :contains "Subject" "Status Report:Activity Report:Information:"
{
  fileinto "INBOX.Servers.alunduil.gladia";
  stop;
}

if address :domain :regex [ "from", "to", "sender" ] "([-a-z0-9.]+)\.test\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.Servers.alunduil.test.${hostname}";
  stop;
}

if header :regex "Subject" "([-a-z0-9.]+)\.test\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.Servers.alunduil.test.${hostname}";
  stop;
}

if address :domain :regex [ "from", "to", "sender" ] "([-a-z0-9.]+)\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.Servers.alunduil.${hostname}";
  stop;
}

if header :regex "Subject" "([-a-z0-9.]+)\.alunduil\.com"
{
  set :lower "hostname" "${1}";
  fileinto "INBOX.Servers.alunduil.${hostname}";
  stop;
}
