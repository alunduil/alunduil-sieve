require "fileinto";
require "regex";
require "variables";

if header :regex "List-ID" "([-a-zA-Z0-9]+)\.kde.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.kde.${listname}";
  stop;
}

if header :regex "List-ID" "([-a-zA-Z0-9]+)\.gentoo.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.gentoo.${listname}";
  stop;
}

if header :regex "List-ID" "(bacula-[-a-zA-Z0-9]+)\.lists\.sourceforge\.net"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.bacula.${listname}";
  stop;
}

if header :regex "List-ID" "(cmake-[-a-zA-Z0-9]+)\.cmake\.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.cmake.${listname}";
  stop;
}

if header :regex "List-ID" "(drizzle-[-a-zA-Z0-9]+)\.lists\.launchpad\.net"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.drizzle.${listname}";
  stop;
}

if header :regex "List-ID" [
  "(holland-[-a-zA-Z0-9]+)\.googlegroups.com",
  "(holland-[-a-zA-Z0-9]+)\.lists\.launchpad\.net"
  ]
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.holland.${listname}";
  stop;
}

if header :regex "List-ID" [ 
  "([-a-zA-Z0-9]+)\.vger\.kernel\.org",
  "(satlug)\.satlug\.org"
  ]
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.linux.${listname}";
  stop;
}

if header :regex "List-ID" "(mailman-[-a-zA-Z0-9]+)\.python\.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.mailman.${listname}";
  stop;
}

if header :regex "List-ID" "(metalog-[-a-zA-Z0-9]+)\.lists\.sourceforge\.net"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.metalog.${listname}";
  stop;
}

if header :regex "List-ID" "([-a-zA-Z0-9]+)\.lists\.mnstate\.edu"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.mnstate.${listname}";
  stop;
}

if header :regex "List-ID" "(octave-[-a-zA-Z0-9]+)\.octave\.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.octave.${listname}";
  stop;
}

if header :regex "List-ID" "(puppet-[-a-zA-Z0-9]+)\.googlegroups\.com"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.Mailing Lists.puppet.${listname}";
  stop;
}
