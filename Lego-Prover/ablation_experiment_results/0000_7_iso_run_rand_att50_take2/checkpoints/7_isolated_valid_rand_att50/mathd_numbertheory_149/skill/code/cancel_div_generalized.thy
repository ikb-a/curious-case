lemma cancel_div_generalized:
  fixes x a b c :: real
  assumes "x > 0" "m*a + n*b / x = p"
    and "n > 0"
  shows "m*a*x + n*b = p*x"
proof -
  have "x * (m*a + n*b / x) = p * x"
    using assms(2) by auto
  then have "x * m * a + x * (n * b / x) = p * x"
    by (simp add: distrib_left)
  then show ?thesis
    using assms(1) by (auto simp: field_simps)
qed