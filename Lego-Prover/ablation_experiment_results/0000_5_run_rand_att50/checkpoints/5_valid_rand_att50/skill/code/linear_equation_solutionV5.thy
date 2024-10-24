theorem linear_equation_solution:
  fixes a b :: real
  assumes h0: "m * a + n * b = p"
      and h1: "a = c"
  shows "m * c + n * b = p"
proof -
  have eq: "m * a + n * b = p" using h0 by simp
  have "m * c + n * b = p" using h1 eq by simp
  thus ?thesis by simp
qed