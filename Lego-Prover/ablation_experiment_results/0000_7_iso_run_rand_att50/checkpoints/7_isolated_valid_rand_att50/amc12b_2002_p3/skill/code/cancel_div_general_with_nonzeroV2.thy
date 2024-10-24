lemma cancel_div_general_with_nonzero:
  fixes x y a b c :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "a + b / x = c / y"
  shows "a * (x * y) + b * y = c * x"
proof -
  have "(x * y) * (a + b / x) = c * x" using assms(3)
    by (metis assms(2) diff_minus_eq_add divide_cancel_left mult.assoc mult.commute nonzero_divide_eq_eq)
  then have "(x * y) * a + (x * y) * (b / x) = c * x" by (simp add: distrib_left)
  hence "y * (x * a) + b * y = c * x" using assms(1) by (auto simp: field_simps)
  thus ?thesis by (simp add: field_simps)
qed