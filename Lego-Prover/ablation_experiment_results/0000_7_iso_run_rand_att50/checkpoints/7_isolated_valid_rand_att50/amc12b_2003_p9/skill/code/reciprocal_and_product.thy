lemma reciprocal_and_product:
  fixes a b :: real
  assumes "a > 0" "b > 0"
  shows "a * (1 / a) = 1 \<and> b * (1 / b) = 1"
  by (metis assms(1) assms(2) div_by_1 divide_cancel_right divide_divide_eq_right divide_eq_0_iff divide_eq_eq_1 leD le_numeral_extra(3) mult.right_neutral mult_cancel_right2 right_inverse_eq times_divide_eq_right zero_neq_one)