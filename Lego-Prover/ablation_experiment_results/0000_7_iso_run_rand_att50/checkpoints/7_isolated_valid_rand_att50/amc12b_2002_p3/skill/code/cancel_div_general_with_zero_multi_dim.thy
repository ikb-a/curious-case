lemma cancel_div_general_with_zero_multi_dim:
  fixes x :: "real list" and a b c :: "real list"
  assumes "\<forall>i. x ! i \<noteq> 0" "\<forall>i. a ! i + b ! i / (x ! i) = c ! i"
  shows "\<forall>i. a ! i * (x ! i) + b ! i = c ! i * (x ! i)"
proof -
  have "\<forall>i. (x ! i) * (a ! i + b ! i / (x ! i)) = c ! i * (x ! i)"
    using assms(2) by auto
  then have "\<forall>i. (x ! i) * a ! i + (x ! i) * (b ! i / (x ! i)) = c ! i * (x ! i)"
    by (simp add: distrib_left)
  then show ?thesis
    by (metis add.commute add_divide_eq_if_simps(2) assms(1) assms(2) crossproduct_noteq div_by_1 frac_eq_eq mult.commute mult_cancel_right1 mult_delta_left mult_right_cancel zero_neq_numeral zero_neq_one)
qed