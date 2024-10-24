lemma sqrt_nonnegative:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = sqrt (max 0 a)" by (metis assms max.absorb_iff2)
  then show ?thesis using assms by auto
qed