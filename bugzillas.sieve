require "fileinto";
require "regex";
require "variables";

if address :all :is "from" "bugzilla-daemon@gentoo.org"
{
  if header :regex "X-Bugzilla-Product" "(.*)"
  {
    set :lower "product" "${1}";

    if header :regex "X-Bugzilla-Component" "(.*)"
    {
      set :lower "component" "${1}";
      fileinto "INBOX.bugs.gentoo.${product} (${component})";
    }
  }
}
