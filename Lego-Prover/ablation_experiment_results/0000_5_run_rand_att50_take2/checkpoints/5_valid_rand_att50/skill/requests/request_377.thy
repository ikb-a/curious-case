lemma average_sum:
  fixes xs :: "nat set"
  assumes "finite xs"
  shows "sum f xs = card xs * average f xs"