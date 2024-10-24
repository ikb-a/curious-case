theorem solve_linear_equation_with_parametrization:
  fixes a b :: real
  assumes h0: "m * a + n * b = c"
    and h1: "m > 0"
    and h2: "n > 0"
  shows "b = (c - m * a) / n"
proof -
  have "m * a + n * b = c" using h0 by simp
  then have "n * b = c - m * a" by simp
  then show ?thesis using h1 h2
    by (auto simp: field_simps)
qed