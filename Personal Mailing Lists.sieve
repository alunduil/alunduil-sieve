require "fileinto";
require "reject";

# amarok
if anyof (
  header :contains ["To", "Cc"] "amarok@kde.org",
  header :contains ["List-ID"] "amarok.kde.org"
  )
{
  fileinto "INBOX.Mailing Lists.KDE.amarok";
  stop;
}

# bacula-users
if anyof (
  header :contains ["To", "Cc"] "bacula-users@lists.sourceforge.net",
  header :contains ["List-ID"] "bacula-users.lists.sourceforge.net"
  )
{
  fileinto "INBOX.Mailing Lists.bacula-users";
  stop;
}

# bugsquad
if anyof (
  header :contains ["To", "Cc"] "bugsquad@kde.org",
  header :contains ["List-ID"] "bugsquad.kde.org"
  )
{
  fileinto "INBOX.Mailing Lists.KDE.bugsquad";
  stop;
}

# cmake
if anyof (
  header :contains ["To", "Cc"] "cmake@cmake.org",
  header :contains ["List-ID"] "cmake.cmake.org"
  )
{
  fileinto "INBOX.Mailing Lists.cmake";
  stop;
}

# drizzle
if anyof (
  header :contains ["List-Id"] "drizzle-discuss.lists.launchpad.net"
  )
{
  fileinto "INBOX.Mailing Lists.drizzle";
  stop;
}

# gentoo-desktop
if anyof (
  header :contains ["To", "Cc"] "gentoo-desktop@gentoo.org",
  header :contains ["List-ID"] "gentoo-desktop.gentoo.org"
  )
{
  fileinto "INBOX.Mailing Lists.Gentoo.gentoo-desktop";
  stop;
}

# gentoo-dev
if anyof (
  header :contains ["To", "Cc"] "gentoo-dev@gentoo.org",
  header :contains ["List-ID"] "gentoo-dev.gentoo.org"
  )
{
  fileinto "INBOX.Mailing Lists.Gentoo.gentoo-dev";
  stop;
}

# gentoo-doc
if anyof (
  header :contains ["To", "Cc"] "gentoo-doc@gentoo.org",
  header :contains ["List-ID"] "gentoo-doc.gentoo.org"
  )
{
  fileinto "INBOX.Mailing Lists.Gentoo.gentoo-doc";
  stop;
}

# gentoo-hardened
if anyof (
  header :contains ["To", "Cc"] "gentoo-hardened@lists.gentoo.org",
  header :contains ["List-Id"] "gentoo-hardened.gentoo.org"
  )
{
  fileinto "INBOX.Mailing Lists.Gentoo.gentoo-hardened";
  stop;
}

# gentoo-kernel
if anyof (
  header :contains ["To", "Cc"] "gentoo-kernel@lists.gentoo.org",
  header :contains ["List-Id"] "gentoo-kernel.gentoo.org"
  )
{
  fileinto "INBOX.Mailing Lists.Gentoo.gentoo-kernel";
  stop;
}

# gentoo-science
if anyof (
  header :contains ["To", "Cc"] "gentoo-science@lists.gentoo.org",
  header :contains ["List-Id"] "gentoo-science.gentoo.org"
  )
{
  fileinto "INBOX.Mailing Lists.Gentoo.gentoo-science";
  stop;
}

# holland-backup
if anyof (
  header :contains ["To", "Cc"] ["holland-devel@googlegroups.com", "holland-discuss@lists.launchpad.net"],
  header :contains ["List-Id"] ["holland-devel.googlegroups.com","holland-discuss.lists.launchpad.net","holland-build.lists.launchpad.net"]
  )
{
  fileinto "INBOX.Mailing Lists.holland";
  stop;
}

# kde-devel
if anyof (
  header :contains ["To", "Cc"] "kde-devel@kde.org",
  header :contains ["List-ID"] "kde-devel.kde.org"
  )
{
  fileinto "INBOX.Mailing Lists.KDE.kde-devel";
  stop;
}

# korganizer-devel
if anyof (
  header :contains ["To", "Cc"] "korganizer-devel@kde.org",
  header :contains ["List-ID"] "korganizer-devel.kde.org"
  )
{
  fileinto "INBOX.Mailing Lists.KDE.korganizer-devel";
  stop;
}

# kstars-devel
if anyof (
  header :contains ["To", "Cc"] "kstars-devel@kde.org",
  header :contains ["List-ID"] "kstars-devel.kde.org"
  )
{
  fileinto "INBOX.Mailing Lists.KDE.kstars-devel";
  stop;
}

# linux-admin
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-admin@vger.kernel.org",
  header :contains ["List-ID"] "linux-admin.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-admin";
  stop;
}

# cgroups
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "cgroups@vger.kernel.org",
  header :contains ["List-ID"] "cgroups.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.cgroups";
  stop;
}

# cpufreq
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "cpufreq@vger.kernel.org",
  header :contains ["List-ID"] "cpufreq.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.cpufreq";
  stop;
}

# dash
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "dash@vger.kernel.org",
  header :contains ["List-ID"] "dash.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.dash";
  stop;
}

# initramfs
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "initramfs@vger.kernel.org",
  header :contains ["List-ID"] "initramfs.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.initramfs";
  stop;
}

# linux-api
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-api@vger.kernel.org",
  header :contains ["List-ID"] "linux-api.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-api";
  stop;
}

# linux-cifs
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-cifs@vger.kernel.org",
  header :contains ["List-ID"] "linux-cifs.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-cifs";
  stop;
}

# linux-laptop
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-laptop@vger.kernel.org",
  header :contains ["List-ID"] "linux-laptop.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-laptop";
  stop;
}

# linux-next
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-next@vger.kernel.org",
  header :contains ["List-ID"] "linux-next.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-next";
  stop;
}

# linux-sctp
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-sctp@vger.kernel.org",
  header :contains ["List-ID"] "linux-sctp.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-sctp";
  stop;
}

# linux-btrfs
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-btrfs@vger.kernel.org",
  header :contains ["List-ID"] "linux-btrfs.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-btrfs";
  stop;
}

# linux-ext4
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-ext4@vger.kernel.org",
  header :contains ["List-ID"] "linux-ext4.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-ext4";
  stop;
}

# linux-kernel
if anyof (
  header :contains ["X-Mailing-List", "To", "Cc"] "linux-kernel@vger.kernel.org",
  header :contains ["List-ID"] "linux-kernel.vger.kernel.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.linux-kernel";
  stop;
}

# mailman-developers
if anyof (
  header :contains "List-ID" "mailman-developers.python.org"
  )
{
  fileinto "INBOX.Mailing Lists.mailman-developers";
  stop;
}

# metalog-users
if anyof (
  header :contains "List-ID" "metalog-users.lists.sourceforge.net"
  )
{
  fileinto "INBOX.Mailing Lists.metalog-users";
  stop;
}

# msumacm list
if anyof (
  header :contains ["To", "Cc"] "msumacm@lists.mnstate.edu",
  header :contains ["List-ID"] "msumacm.lists.mnstate.edu"
  )
{
  fileinto "INBOX.Mailing Lists.MSUM.msumacm";
  stop;
}

# octave-maintainers
if anyof (
  header :contains ["To", "Cc"] "octave-maintainers@octave.org",
  header :contains ["List-ID"] "octave-maintainers.octave.org"
  )
{
  fileinto "INBOX.Mailing Lists.octave-maintainers";
  stop;
}

# plasma-devel
if anyof (
  header :contains ["To", "Cc"] "plasma-devel@kde.org",
  header :contains ["List-ID"] "plasma-devel.kde.org"
  )
{
  fileinto "INBOX.Mailing Lists.KDE.plasma-devel";
  stop;
}

# puppet-users
if anyof (
  header :contains ["List-ID"] "puppet-users.googlegroups.com"
  )
{
  fileinto "INBOX.Mailing Lists.puppet-users";
  stop;
}

# satlug
if anyof (
  header :contains ["List-Id"] "satlug.satlug.org"
  )
{
  fileinto "INBOX.Mailing Lists.linux.satlug";
  stop;
}

# student_dragonews list
if anyof (
  header :contains ["Cc"] "student_dragonews@lists.mnstate.edu",
  header :contains ["List-ID"] "student_dragonews.lists.mnstate.edu"
  )
{
  fileinto "INBOX.Mailing Lists.MSUM.student_dragonews";
  stop;
}

# symfony-users
if anyof (
  header :contains ["Mailing-List", "To", "Cc"] "symfony-users@googlegroups.com",
  header :contains ["List-ID"] "symfony-users.googlegroups.com"
  )
{
  fileinto "INBOX.Mailing Lists.symfony-users";
  stop;
}

# Todoist for Android
if anyof (
  header :contains ["List-ID"] "todoist-for-android-devel.lists.drewdahl.com"
  )
{
  fileinto "INBOX.Mailing Lists.Todoist for Android";
  stop;
}