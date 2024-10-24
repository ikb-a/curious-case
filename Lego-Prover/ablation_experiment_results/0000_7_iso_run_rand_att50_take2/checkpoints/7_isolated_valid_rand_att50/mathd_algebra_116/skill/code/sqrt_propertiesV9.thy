lemma sqrt_properties:
  shows "sqrt (a^2) = abs a"
proof -
  have "sqrt (a^2) * sqrt (a^2) = a^2"
    by (metis abs_if_raw abs_of_neg abs_of_pos neg_0_less_iff_less power2_eq_square real_sqrt_abs real_sqrt_abs2 real_sqrt_eq_iff)
  also have "... = (abs a) * (abs a)"
    by sos
  finally have "sqrt (a^2) * sqrt (a^2) = (abs a) * (abs a)" .
  then show "sqrt (a^2) = abs a"
    by auto
qed