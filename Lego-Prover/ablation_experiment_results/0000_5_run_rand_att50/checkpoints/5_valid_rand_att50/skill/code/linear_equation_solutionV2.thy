theorem linear_equation_solution:
  fixes a b c :: real
  assumes h0 : "m * a + n * b = p"
    and h1 : "m > 0"
    and h2 : "n > 0"
  shows "b = (p - m * a) / n"
proof -
  have eq: "m * a + n * b = p" using h0 by simp
  then have "n * b = p - m * a" by (simp add: algebra_simps)
  then have "b = (p - m * a) / n" using h2 by (auto simp: field_simps)
  thus ?thesis by simp
qed