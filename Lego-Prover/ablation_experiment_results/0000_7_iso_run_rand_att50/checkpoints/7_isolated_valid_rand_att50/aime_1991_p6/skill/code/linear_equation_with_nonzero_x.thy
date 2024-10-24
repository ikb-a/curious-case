lemma linear_equation_with_nonzero_x:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "c * x = a * x + b"
  shows "a + b / x = c"
proof -
  have "c * x - b = a * x" using assms(2) by simp
  then have "a = (c * x - b) / x" using assms(1) by (simp add: field_simps)
  thus ?thesis by (smt (verit) add_divide_eq_if_simps(1) assms(1) assms(2) nonzero_mult_div_cancel_right)
qed