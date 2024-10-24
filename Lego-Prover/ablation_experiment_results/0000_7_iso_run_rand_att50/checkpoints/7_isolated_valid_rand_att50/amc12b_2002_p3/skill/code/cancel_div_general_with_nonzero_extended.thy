lemma cancel_div_general_with_nonzero_extended:
  fixes x y a b c d :: real
  assumes "x \<noteq> 0" "y \<noteq> 0" "a + b / x = c / y" "d \<noteq> 0"
  shows "a * (x * y * d) + b * y * d = c * x * d"
proof -
  have "d * (a + b / x) = (c / y) * d" by (metis assms(3) mult.commute)
  then have "(x * y * d) * (a + b / x) = c * x * d" using assms(3) by (smt (verit) assms(1) assms(2) assms(4) divide_cancel_right divisors_zero mult.commute nonzero_mult_div_cancel_left nonzero_mult_divide_mult_cancel_left nonzero_mult_divide_mult_cancel_right)
  then have "(x * y * d) * a + (x * y * d) * (b / x) = c * x * d" by (simp add: distrib_left)
  hence "y * (x * a * d) + b * y * d = c * x * d" using assms(1) by (auto simp: field_simps)
  thus ?thesis by (simp add: field_simps)
qed