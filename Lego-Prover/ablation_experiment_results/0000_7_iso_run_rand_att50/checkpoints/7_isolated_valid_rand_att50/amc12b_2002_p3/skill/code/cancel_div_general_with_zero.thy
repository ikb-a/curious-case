lemma cancel_div_general_with_zero:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + x * (b / x) = c * x"
    by (simp add: distrib_left)
  then show ?thesis
    by (smt (verit) add_divide_eq_iff assms(1) assms(2) nonzero_eq_divide_eq)
qed