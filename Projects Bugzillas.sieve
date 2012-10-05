require "fileinto";

# alunduil-overlay issues
if anyof (
  header :contains "X-Bugzilla-Product" "alunduil-overlay"
  )
{
  fileinto "INBOX.Bugs.Personal.alunduil-overlay";
  stop;
}

# bx-analyze issues
if anyof (
  header :contains "X-Bugzilla-Product" "bx-analyze"
  )
{
  fileinto "INBOX.Bugs.Personal.bx-analyze";
  stop;
}

# corky
if anyof (
  header :contains "X-Bugzilla-Product" "corky"
  )
{
  fileinto "INBOX.Bugs.Rackspace.corky";
  stop;
}

# pycore
if anyof (
  header :contains "X-Bugzilla-Product" "pycore"
  )
{
  fileinto "INBOX.Bugs.Rackspace.pycore";
  stop;
}

# pandaroid
if anyof (
  header :contains "X-GoogleCode-Project" "pandoroid"
  )
{
  fileinto "INBOX.Bugs.pandaroid";
  stop;
}

# equitube
if anyof (
  header :contains "X-Bugzilla-Product" "equitube"
  )
{
  fileinto "INBOX.Bugs.Personal.equitube";
  stop;
}

# gentoo alunduil
if anyof (
  header :contains "X-Bugzilla-Reporter" "alunduil@alunduil.com"
  )
{
  fileinto "INBOX.Bugs.Gentoo.alunduil";
  stop;
}

# gentoo bugs
if anyof (
  header :contains "From" ["bugzilla-daemon@gentoo.org"],
  header :contains "X-Bugzilla-Product" ["Gentoo", "Portage"]
  )
{
  fileinto "INBOX.Bugs.Gentoo";
  stop;
}

# holland-backup
if anyof (
  header :contains "X-Launchpad-Bug" "holland-backup"
  )
{
  fileinto "INBOX.Bugs.holland";
  stop;
}

# KDE bugs
if anyof (
  header :contains "X-Bugzilla-Product" "korganizer",
  header :contains "X-Bugzilla-URL" "http://bugs.kde.org/"
  )
{
  fileinto "INBOX.Bugs.KDE";
  stop;
}

# partum artificium
if anyof (
  header :contains "X-Bugzilla-Product" "Partum Artificium"
  )
{
  fileinto "INBOX.Bugs.Personal.Partum Artificium";
  stop;
}

# pclean bugs
if anyof (
  header :contains "X-Bugzilla-Product" "pclean"
  )
{
  fileinto "INBOX.Bugs.Personal.pclean";
  stop;
}

# proteus bugs
if anyof (
  header :contains "X-Bugzilla-Product" "proteus"
  )
{
  fileinto "INBOX.Bugs.Personal.proteus";
  stop;
}

# rackertools
if anyof (
  header :contains "X-Bugzilla-Product" "rackertools"
  )
{
  fileinto "INBOX.Bugs.Rackspace.rackertools";
  stop;
}

# RedHat
if anyof (
  header :contains "X-Bugzilla-Product" ["Fedora", "Red Hat", "Spacewalk", "Security Response"]
  )
{
  fileinto "INBOX.Bugs.RedHat";
  stop;
}

# todoist bugs
if anyof (
  header :contains "X-Bugzilla-Product" ["TODOIST for Android","todoist"]

  )
{
  fileinto "INBOX.Bugs.Personal.todoist";
  stop;
}

# tomdroid bugs
if anyof (
  header :contains "X-Launchpad-Bug" "product=tomdroid;"
  )
{
  fileinto "INBOX.Bugs.tomdroid";
}

# upkern bugs
if anyof (
  header :contains "X-Bugzilla-Product" "upkern"
  )
{
  fileinto "INBOX.Bugs.Personal.upkern";
  stop;
}

# recisphere bugs
if anyof (
  header :contains "X-Bugzilla-Product" "recisphere"
  )
{
  fileinto "INBOX.Bugs.Personal.recisphere";
  stop;
}

# WINE bugs
if anyof (
  header :contains "X-Bugzilla-Product" "Wine"
  )
{
  fileinto "INBOX.Bugs.Wine";
  stop;
}
