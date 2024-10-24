lemma cancel_div_with_multiple_variables:
  fixes x a b c d e f :: real
  assumes "x \<noteq> 0" "a + b / x = c" "d = c - a" "e + f = b"
  shows "f = d * x - e"
proof -
  have "a + b / x = c" using assms(2) by simp
  then have "b / x = c - a" by simp
  then have "b = x * (c - a)" using assms(1) by (auto simp: field_simps)
  also have "... = x * d" using assms(3) by simp
  also have "... = e + (d * x - e)" using assms(4) by simp
  thus ?thesis by (metis \<open>b / x = c - a\<close> add_diff_cancel_left' assms(1) assms(3) assms(4) frac_eq_eq nonzero_divide_eq_eq)
qed