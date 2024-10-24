lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = sqrt (max a 0)" 
    by (metis assms max.absorb_iff2 max.commute)
  then show ?thesis using assms by auto
qed