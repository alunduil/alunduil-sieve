require "fileinto";
require "regex";
require "variables";

if exists "X-Bugzilla-Product"
{
  if address :domain :regex "from" "([^.]+)\..*"
  {
    set :lower "bugzilla" "${1}";
  }

  if header :contains "X-Bugzilla-Product" "/"
  {
    if header :regex "X-Bugzilla-Product" "([^/]*)/([^/]*)"
    {
      set :lower "product" "${1} ${2}";
    }
  }
  else
  {
    if header :regex "X-Bugzilla-Product" "(.*)"
    {
      set :lower "product" "${1}";
    }
  }

  if header :regex "X-Bugzilla-Component" "(.*)"
  {
    set :lower "component" "${1}";
  }

  fileinto "INBOX.bugs.${bugzilla}.${product} (${component})";
  stop;
}

