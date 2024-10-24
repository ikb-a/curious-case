lemma sqrt_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) * sqrt(b) = sqrt(a)"
  proof -
    have "sqrt(a / b) * sqrt(b) = sqrt(a * (1 / b) * b)"
      by (metis mult.commute mult.right_neutral real_sqrt_mult times_divide_eq_right)
    also have "... = sqrt(a * 1)" 
      by (metis ab_semigroup_mult_class.mult_ac(1) assms div_by_1 frac_eq_eq less_numeral_extra(3) mult.commute mult.right_neutral mult_cancel_left2 mult_cancel_right2 nonzero_eq_divide_eq nonzero_mult_div_cancel_right zero_eq_1_divide_iff zero_neq_one)
    also have "... = sqrt(a)"
      by (simp add: real_sqrt_mult_self)
    finally show ?thesis .
  qed
  then show ?thesis
    by (metis assms real_sqrt_divide)
qed