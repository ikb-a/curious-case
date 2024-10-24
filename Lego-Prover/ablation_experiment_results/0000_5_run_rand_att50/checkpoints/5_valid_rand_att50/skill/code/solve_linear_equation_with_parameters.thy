theorem solve_linear_equation_with_parameters:
  fixes a b c :: real
  assumes h0: "a > 0"
    and h1: "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have eq: "a * x + b = c" using h1 by simp
  then have "a * x = c - b" by auto
  then show "x = (c - b) / a" using h0 by (auto simp: field_simps)
qed