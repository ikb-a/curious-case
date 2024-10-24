lemma sqrt_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) * sqrt(b) = sqrt(a)"
  proof -
    have "a / b = a * (1 / b)" by (simp add: field_simps)
    then have "sqrt(a / b) * sqrt(b) = sqrt(a * (1 / b)) * sqrt(b)"
      by (metis assms mult.commute)
    also have "... = sqrt(a) * sqrt(1 / b) * sqrt(b)"
      by (metis real_sqrt_mult)
    also have "... = sqrt(a) * (sqrt(b) / sqrt(b))"
      by (metis \<open>a / b = a * (1 / b)\<close> assms div_by_1 div_self frac_eq_eq less_numeral_extra(3) mult.comm_neutral mult.commute mult_cancel_left1 nonzero_eq_divide_eq real_sqrt_divide real_sqrt_mult zero_neq_one)
    finally show ?thesis
      by (metis \<open>a / b = a * (1 / b)\<close> \<open>sqrt a * sqrt (1 / b) * sqrt b = sqrt a * (sqrt b / sqrt b)\<close> assms div_self frac_eq_eq less_numeral_extra(3) mult.commute mult_cancel_right1 real_sqrt_divide real_sqrt_eq_zero_cancel_iff real_sqrt_mult)
  qed
  then show "sqrt(a / b) = sqrt(a) / sqrt(b)"
    by (metis real_sqrt_divide)
qed