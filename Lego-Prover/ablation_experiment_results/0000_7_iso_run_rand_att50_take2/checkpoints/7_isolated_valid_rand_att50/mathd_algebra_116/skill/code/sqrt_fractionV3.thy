lemma sqrt_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) * sqrt(b) = sqrt(a)"
    by (metis assms div_by_1 frac_eq_eq less_numeral_extra(3) mult.comm_neutral mult.commute nonzero_eq_divide_eq real_sqrt_eq_iff real_sqrt_mult zero_neq_one)
  then show ?thesis
    by (metis real_sqrt_divide)
qed