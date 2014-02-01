require "fileinto";
require "regex";
require "variables";

if exists "X-Bugzilla-Product"
{
  if header :regex "X-Bugzilla-URL" "([^.]+)[.][^.]+/?$"
  {
    set :lower "bugzilla" "${1}";
  }

  if header :regex "X-Bugzilla-Product" "([^/]+)(/([^/]+))"
  {
    set :lower "product" "${1} ${2}";
  }
  elsif header :regex "X-Bugzilla-Product" "([^/]+)"
  {
    set :lower "product" "${1}";
  }

  if header :regex "X-Bugzilla-Component" "(.*)"
  {
    set :lower "component" "${1}";
  }

  fileinto "INBOX.bugs.${bugzilla}.${product}.${component}";
  stop;
}

if exists "X-Launchpad-Bug"
{
  if header :regex "X-Launchpad-Bug" "product=([^;]+)"
  {
    set :lower "product" "${1}";
  }

  fileinto "INBOX.bugs.launchpad.${product}";
  stop;
}

if exists "X-GitHub-Recipient"
{
  if header :regex "List-ID" "([^/]+)/([^/]+) <"
  {
    set :lower "group" "${1}";
    set :lower "project" "${2}";
  }

  fileinto "INBOX.bugs.${group}.${project}";
  stop;
}

