require "fileinto";
require "regex";

# elijah.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^elijah.*?system check",
  header :contains "From" "@elijah.alunduil.com",
  header :contains "Subject" ["@elijah", "elijah.alunduil.com"]
  )
{
  fileinto "INBOX.Servers.alunduil.elijah";
  stop;
}

# daneel.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^daneel.*?system check",
  header :contains ["From", "Sender", "To"] "root@daneel.alunduil.com",
  header :contains "Subject" ["@daneel", "daneel.alunduil.com"]
  )
{
  fileinto "INBOX.Servers.alunduil.daneel";
  stop;
}

# dornick.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^dornick.*?system check",
  header :contains ["From", "Sender", "To"] "root@dornick.alunduil.com",
  header :contains "Subject" ["@dornick", "dornick.alunduil.com"],
  header :contains "Received" "dornick.alunduil.com"
  )
{
  fileinto "INBOX.Servers.alunduil.dornick";
  stop;
}

# giskard.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^giskard.*?system check",
  header :regex :comparator "i;ascii-casemap" "Subject" "fcron.*giskard.alunduil.com",
  header :contains "Subject" ["@giskard", "giskard.alunduil.com"],
  header :contains ["From", "Sender", "To"] "root@giskard.alunduil.com"
  )
{
  fileinto "INBOX.Servers.alunduil.giskard";
  stop;
}

# gold.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^gold.*?system check",
  header :regex :comparator "i;ascii-casemap" "Subject" "fcron.*gold.alunduil.com",
  header :contains "Subject" ["@gold", "gold.alunduil.com"],
  header :contains ["From", "Sender", "To"] "root@gold.alunduil.com"
  )
{
  fileinto "INBOX.Servers.alunduil.gold";
  stop;
}

# lanning.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^lanning.*?system check",
  header :regex :comparator "i;ascii-casemap" "Subject" "fcron.*lanning.alunduil.com",
  header :contains "Subject" ["@lanning", "lanning.alunduil.com"],
  header :contains ["From", "Sender", "To"] "root@lanning.alunduil.com"
  )
{
  fileinto "INBOX.Servers.alunduil.lanning";
  stop;
}

# calvin.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^calvin.*?system check",
  header :regex :comparator "i;ascii-casemap" "Subject" "fcron.*calvin.alunduil.com",
  header :contains "Subject" ["@calvin", "calvin.alunduil.com"],
  header :contains ["From", "Sender", "To"] "root@calvin.alunduil.com"
  )
{
  fileinto "INBOX.Servers.alunduil.calvin";
  stop;
}

# calvin.alunduil.com
if anyof (
  header :regex :comparator "i;ascii-casemap" "Subject" "^madarian.*?system check",
  header :regex :comparator "i;ascii-casemap" "Subject" "fcron.*madarian.alunduil.com",
  header :contains "Subject" ["@madarian", "madarian.alunduil.com"],
  header :contains ["From", "Sender", "To"] "root@madarian.alunduil.com"
  )
{
  fileinto "INBOX.Servers.alunduil.madarian";
  stop;
}

# gladia.alunduil.com
if anyof (
  header :contains "Subject" "Status Report:Activity Report:Information:"
  )
{
  fileinto "INBOX.Servers.alunduil.gladia";
  stop;
}
