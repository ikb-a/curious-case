lemma division_and_sum:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "(a + b) / a = 1 + (b / a)"
proof -
  have "(a + b) / a = a / a + b / a" using assms by (simp add: field_simps)
  then show ?thesis by (metis add_divide_distrib assms comm_monoid_mult_class.mult_1 frac_eq_eq mult.assoc mult_cancel_left2 mult_cancel_right1 nonzero_division nonzero_mult_div_cancel_right zero_neq_one)
qed