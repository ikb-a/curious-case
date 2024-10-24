lemma amc12a_2013_p8_special_case:
  fixes x :: real
  assumes "x > 0"
  shows "x * (2/x) = 2"
proof -
  have "x * (2/x) = 2" by (metis assms divide_numeral_1 frac_eq_eq less_numeral_extra(3) mult.commute mult_numeral_1_right nonzero_divide_eq_eq zero_neq_numeral)
  thus ?thesis by simp
qed