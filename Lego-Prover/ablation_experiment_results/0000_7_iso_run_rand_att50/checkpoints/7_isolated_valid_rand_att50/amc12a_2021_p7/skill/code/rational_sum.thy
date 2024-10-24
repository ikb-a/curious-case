lemma rational_sum:
  fixes p :: rat
  assumes "p = 1 / 4"
  shows "let (m, n) = quotient_of p in m + n = 5"
proof -
  have "quotient_of (1/4) = (1, 4)"
    by eval
  then show ?thesis
    using `p = 1 / 4` by fastforce
qed