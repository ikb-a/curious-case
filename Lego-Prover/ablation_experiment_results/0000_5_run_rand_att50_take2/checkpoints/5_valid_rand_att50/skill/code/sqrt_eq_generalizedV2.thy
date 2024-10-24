lemma sqrt_eq_generalized:
  fixes x y :: real
  assumes "sqrt (x + y) = y" "y \<ge> 0"
  shows "x = y^2 - y"
proof -
  have "x + y = y^2" using assms by (metis real_sqrt_eq_iff real_sqrt_unique zero_le_numeral)
  then show "x = y^2 - y" by simp
qed