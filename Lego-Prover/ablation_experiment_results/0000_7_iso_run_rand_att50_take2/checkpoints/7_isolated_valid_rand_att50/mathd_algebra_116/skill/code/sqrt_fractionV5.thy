lemma sqrt_fraction:
  fixes a b :: real
  assumes "b > 0"
  shows "sqrt(a / b) = sqrt(a) / sqrt(b)"
proof -
  have "sqrt(a / b) * sqrt(b) = sqrt(a)"
    using assms by (metis div_by_1 frac_eq_eq less_numeral_extra(3) mult.commute mult.right_neutral nonzero_eq_divide_eq real_sqrt_eq_iff real_sqrt_mult zero_neq_one)
  then have "sqrt(a / b) = sqrt(a) / sqrt(b)"
    using assms by (auto simp: field_simps)
  thus ?thesis
    by simp
qed