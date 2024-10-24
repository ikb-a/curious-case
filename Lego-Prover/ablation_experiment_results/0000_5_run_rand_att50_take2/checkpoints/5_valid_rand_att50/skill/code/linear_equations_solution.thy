theorem linear_equations_solution:
  fixes a b c d e f :: real
  assumes h0: "a*x + b*y = c"
      and h1: "d*x + e*y = f"
      and h2: "b \<noteq> 0"
      and h3: "e \<noteq> 0"
  shows "y = (f - d*x) / e"
proof -
  have "e*y = f - d*x" using h1 by simp
  then show ?thesis by (metis h3 nonzero_mult_div_cancel_left)
qed