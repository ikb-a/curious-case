lemma cancel_div_general_with_params:
  fixes x y a b c :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "p + q / x = r / y"
  shows "p * (x * y) + q * y = r * x"
proof -
  have "(x * y) * (p + q / x) = r * x" using assms(3)
    by (metis assms(2) diff_minus_eq_add divide_cancel_left mult.assoc mult.commute nonzero_divide_eq_eq)
  then have "(x * y) * p + (x * y) * (q / x) = r * x" by (simp add: distrib_left)
  hence "y * (x * p) + q * y = r * x" using assms(1) by (auto simp: field_simps)
  thus ?thesis by (simp add: field_simps)
qed