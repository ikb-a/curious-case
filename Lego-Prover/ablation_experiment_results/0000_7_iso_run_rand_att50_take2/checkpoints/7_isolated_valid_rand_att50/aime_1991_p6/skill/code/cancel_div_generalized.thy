lemma cancel_div_generalized:
  fixes x a b c :: real
  assumes "x \<noteq> 0" "a + b / x = c"
  shows "a * x + b = c * x"
proof -
  have "x * (a + b / x) = c * x" using assms(2) by auto
  then show ?thesis 
    by (smt (verit) assms(1) add_divide_eq_if_simps(1) mult.commute nonzero_eq_divide_eq)
qed