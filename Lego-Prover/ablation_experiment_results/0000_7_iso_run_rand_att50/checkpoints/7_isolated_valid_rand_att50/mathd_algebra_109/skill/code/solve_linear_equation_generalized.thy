theorem solve_linear_equation_generalized:
  fixes a b c :: real
  assumes h0 : "a \<noteq> 0"
  assumes h1 : "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a * x + b = c" using h1 by simp
  then have "a * x = c - b" by (simp add: h0)
  then show "x = (c - b) / a" using h0 by (simp add: field_simps)
qed