lemma sqrt_properties:
  fixes a :: real
  shows "sqrt (a^2) = abs a"
proof -
  have "sqrt (a^2) * sqrt (a^2) = a^2" 
    by (metis abs_if_raw abs_of_neg abs_of_pos neg_0_less_iff_less power2_eq_square real_sqrt_abs real_sqrt_abs2 real_sqrt_eq_iff)
  then have "sqrt (a^2) = sqrt (abs a * abs a)" 
    by auto
  also have "... = abs a" 
    by auto
  finally show ?thesis 
    by auto
qed