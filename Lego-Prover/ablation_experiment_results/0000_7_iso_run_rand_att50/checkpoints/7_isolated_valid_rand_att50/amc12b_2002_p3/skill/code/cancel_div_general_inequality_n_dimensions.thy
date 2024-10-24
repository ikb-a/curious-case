lemma cancel_div_general_inequality_n_dimensions:
  fixes x a b c :: "real list"
  assumes "\<forall>i. x ! i > 0" "\<forall>i. a ! i + b ! i / x ! i < c ! i"
  shows "\<forall>i. a ! i * x ! i + b ! i < c ! i * x ! i"
proof -
  have "\<forall>i. x ! i * (a ! i + b ! i / x ! i) < c ! i * x ! i"
    using assms(2) by (smt (verit) assms(1) mult.commute mult_less_cancel_right)
  then have "\<forall>i. x ! i * a ! i + x ! i * (b ! i / x ! i) < c ! i * x ! i"
    by (simp add: distrib_left)
  then show ?thesis
    using assms(1) by (metis add.commute assms(2) divide_add_eq_iff less_numeral_extra(3) pos_divide_less_eq)
qed