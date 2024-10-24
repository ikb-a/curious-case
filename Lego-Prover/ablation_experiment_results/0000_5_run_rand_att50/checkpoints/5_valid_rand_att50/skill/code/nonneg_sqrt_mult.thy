lemma nonneg_sqrt_mult:
  fixes a b :: real
  assumes "a >= 0" and "b >= 0"
  shows "sqrt a * sqrt b = sqrt (a * b)"
proof -
  have "sqrt a * sqrt b = sqrt (a * b)" using assms 
    by (metis real_sqrt_mult)
  then show ?thesis by simp
qed