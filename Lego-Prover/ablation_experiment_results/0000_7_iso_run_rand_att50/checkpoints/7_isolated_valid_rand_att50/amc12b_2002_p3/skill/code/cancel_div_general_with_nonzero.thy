lemma cancel_div_general_with_nonzero:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x"
    using assms(2) by auto
  then have "x * a + b = c * x"
    by (smt (verit) add_divide_eq_if_simps(1) assms(1) assms(2) mult.commute nonzero_eq_divide_eq)
  then show ?thesis by sos
qed