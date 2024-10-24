lemma prime_gt_1_nat:
  assumes "prime p"
  shows "p > 1"
  using assms unfolding prime_def by auto