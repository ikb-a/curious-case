theorem linear_equation_solution:
  fixes a b :: real
  assumes h0 : "a * x + b = c"
    and h1 : "a \<noteq> 0"
  shows "x = (c - b) / a"
proof -
  have "a * x + b = c" using h0 by simp
  then have "a * x = c - b" by simp
  then show "x = (c - b) / a" using h1 by (auto simp: field_simps)
qed