lemma sqrt_eq_extended:
  fixes x y :: real
  assumes "sqrt (x + 9) = y" "y > 0"
  shows "x = y^2 - 9"
proof -
  have "x + 9 = y^2" using assms(1) by (metis assms(2) less_eq_real_def real_sqrt_eq_iff real_sqrt_unique)
  then show "x = y^2 - 9" by simp
qed