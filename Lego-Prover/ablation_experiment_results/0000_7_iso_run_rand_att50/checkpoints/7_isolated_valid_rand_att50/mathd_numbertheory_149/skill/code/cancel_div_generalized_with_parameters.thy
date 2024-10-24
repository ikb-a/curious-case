lemma cancel_div_generalized_with_parameters:
  fixes x a b c d p :: real
  assumes "x > 0" "d > 0" "m * a + n * (b / x) = p"
  shows "m * x * a + n * b = p * x" and "d * (m * a + n * (b / x)) = d * p"
proof -
  have "x * (m * a + n * (b / x)) = p * x"
    using assms(3) by auto
  then have "m * x * a + n * b = p * x"
    by (smt (verit) assms(1) assms(3) cancel_div_generalized_with_coefficients(1))
  thus "m * x * a + n * b = p * x" using assms(1) by auto
  have "d * (m * a + n * (b / x)) = d * p"
    using assms(3) by (simp add: distrib_left)
  thus "d * (m * a + n * (b / x)) = d * p" by simp
qed