require "fileinto";
require "regex";
require "variables";

if header :regex "List-ID" "([-a-zA-Z0-9]+)\.kde.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.kde.${listname}";
  stop;
}

if header :regex "List-ID" "([-a-zA-Z0-9]+)\.gentoo.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.gentoo.${listname}";
  stop;
}

if header :regex "List-ID" "(bacula-[-a-zA-Z0-9]+)\.lists\.sourceforge\.net"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.bacula.${listname}";
  stop;
}

if header :regex "List-ID" "(cmake[-a-zA-Z0-9]*)\.cmake\.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.cmake.${listname}";
  stop;
}

if header :regex "List-ID" "(drizzle-[-a-zA-Z0-9]+)\.lists\.launchpad\.net"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.drizzle.${listname}";
  stop;
}

if header :regex "List-ID" [
  "(holland-[-a-zA-Z0-9]+)\.googlegroups.com",
  "(holland-[-a-zA-Z0-9]+)\.lists\.launchpad\.net"
  ]
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.holland.${listname}";
  stop;
}

if header :regex "List-ID" [ 
  "([-a-zA-Z0-9]+)\.vger\.kernel\.org",
  "(satlug)\.satlug\.org"
  ]
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.linux.${listname}";
  stop;
}

if header :regex "List-ID" "(mailman-[-a-zA-Z0-9]+)\.python\.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.mailman.${listname}";
  stop;
}

if header :regex "List-ID" "(metalog-[-a-zA-Z0-9]+)\.lists\.sourceforge\.net"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.metalog.${listname}";
  stop;
}

if header :regex "List-ID" "([-a-zA-Z0-9]+)\.lists\.mnstate\.edu"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.mnstate.${listname}";
  stop;
}

if header :regex "List-ID" "(octave[-a-zA-Z0-9]*)\.octave\.org"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.octave.${listname}";
  stop;
}

if header :regex "List-ID" "(puppet[-a-zA-Z0-9]*)\.googlegroups\.com"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.puppet.${listname}";
  stop;
}

if header :regex "List-ID" [
  "(openstack[-a-zA-Z0-9]*)\.lists\.launchpad\.net",
  "(openstack[-a-zA-Z0-9]*)\.lists\.openstack\.org"
  ]
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.openstack.${listname}";
  stop;
}

if header :regex "List-ID" "([-a-zA-Z0-9]+)\.oss\.tresys\.com"
{
  set :lower "listname" "${1}";
  fileinto "INBOX.mailing lists.selinux.${listname}";
  stop;
}
