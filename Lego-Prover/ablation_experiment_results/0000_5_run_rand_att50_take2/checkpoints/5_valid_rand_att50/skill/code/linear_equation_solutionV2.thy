theorem linear_equation_solution:
  fixes a b c :: real
  assumes h0: "a \<noteq> 0" "b \<noteq> 0" "a * x + b * y = c"
  shows "y = (c - a * x) / b"
proof -
  have "b * y = c - a * x" using h0 by auto
  then show ?thesis by (metis h0(2) nonzero_mult_div_cancel_left)
qed