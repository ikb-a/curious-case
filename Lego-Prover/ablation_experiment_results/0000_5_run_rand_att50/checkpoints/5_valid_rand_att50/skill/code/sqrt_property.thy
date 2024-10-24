lemma sqrt_property:
  fixes x :: real
  assumes "x = a^2" and "a >= 0"
  shows "sqrt(x) = a"
proof -
  have "sqrt(x) = sqrt(a^2)" using assms by simp
  then show ?thesis using assms by (metis real_sqrt_unique zero_le_numeral)
qed