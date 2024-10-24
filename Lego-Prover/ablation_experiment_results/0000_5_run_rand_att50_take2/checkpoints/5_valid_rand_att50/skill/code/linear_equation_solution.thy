theorem linear_equation_solution:
  fixes a b c :: real
  assumes h0: "a \<noteq> 0" "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a * x + b = c" using h0 by simp
  hence "a * x = c - b" by (simp add: algebra_simps)
  then show ?thesis by (metis div_by_1 frac_eq_eq h0(1) mult.commute mult_cancel_left1 zero_neq_one)
qed