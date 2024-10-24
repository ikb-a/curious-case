lemma nested_sqrt_eq_multi:
  fixes x :: real
  assumes "sqrt (x + a) = b" and "a >= 0" and "b >= 0"
  shows "x = b^2 - a"
proof -
  have "x + a = b^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then show "x = b^2 - a" by simp
qed