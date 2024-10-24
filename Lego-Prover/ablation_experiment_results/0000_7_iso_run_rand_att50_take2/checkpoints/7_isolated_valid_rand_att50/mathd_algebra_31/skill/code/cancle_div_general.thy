lemma cancle_div_general:
  fixes x a b c d :: real
  assumes "x > 0" "a + b / x = c + d / x"
  shows "a * x + b = (c + d / x) * x"
proof -
  have "x * (a + b / x) = x * (c + d / x)"
    using assms(2) by auto
  then have "x * a + x * (b / x) = x * c + x * (d / x)"
    by (simp add: distrib_left)
  then show ?thesis
    using assms(1) by (auto simp: field_simps)
qed