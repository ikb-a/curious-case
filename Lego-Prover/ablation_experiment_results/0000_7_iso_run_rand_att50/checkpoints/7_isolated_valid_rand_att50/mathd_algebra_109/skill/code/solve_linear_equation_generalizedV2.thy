theorem solve_linear_equation_generalized:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "a * x + b = c \<Longrightarrow> x = (c - b) / a"
proof -
  assume "a * x + b = c"
  then have "a * x = c - b" by (simp add: algebra_simps)
  then show "x = (c - b) / a" by (metis assms div_by_1 frac_eq_eq mult.commute mult_cancel_left1 zero_neq_one)
qed