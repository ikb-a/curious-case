lemma cancel_div_general:
  fixes x a b c :: "'a::field"
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by (simp)
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  then have "x * a + b = c * x"
    using assms(1) by (simp add: divide_simps)
  thus ?thesis by (auto simp: field_simps)
qed