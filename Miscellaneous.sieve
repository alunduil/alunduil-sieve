require "reject";

# Reject any forwarded bug list reports.
if allof (
  anyof (
    header :contains "From" "Derek Carr"
    ),
  header :contains "Subject" "Fwd: Your Bugzilla bug list needs attention."
  )
{
  reject "Not accepting someone else's bug list, please comment on the bug and add me as a CC if you need my assistance.";
  stop;
}