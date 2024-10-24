lemma sqrt_nonneg:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a = 0" if "a = 0" for a
    by (metis real_sqrt_zero that)
  then show "sqrt a >= 0" 
    using assms by auto
qed