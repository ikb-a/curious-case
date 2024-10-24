lemma solve_for_variable:
  fixes a b c d n :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  assumes "a * n + b = c"
  shows "n = (c - b) / a"
  using generalized_linear_equation_solution[of a b c n] by (metis add_diff_cancel_right' add_divide_eq_if_simps(4) assms(1) assms(3) div_by_1 eq_divide_eq mult.commute mult_delta_left mult_delta_right)