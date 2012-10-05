require "fileinto";
require "regex";
require "variables";

if header :contains "X-Bugzilla-Product" "Gentoo"
{
  if header :regex "X-Bugzilla-Component" "(.*)"
  {
    set :lower "component" "${1}";
    fileinto "INBOX.bugs.gentoo.${component}";
  }
  else
  {
    fileinto "INBOX.bugs.gentoo.${component}";
  }
}
