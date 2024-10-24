lemma sqrt_of_pos_sum_of_squares:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "sqrt (a^2 + b^2) > 0"
  by (metis assms(1) less_numeral_extra(3) real_less_rsqrt sum_power2_gt_zero_iff zero_eq_power2)