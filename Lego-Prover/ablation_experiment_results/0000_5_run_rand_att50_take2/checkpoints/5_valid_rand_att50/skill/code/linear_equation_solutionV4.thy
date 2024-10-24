theorem linear_equation_solution:
  fixes a b c :: real
  assumes h0 : "a > 0"
    and h1 : "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a * x + b = c" using h1 by simp
  then have "a * x = c - b" by simp
  then show ?thesis using h0 by (auto simp: field_simps)
qed