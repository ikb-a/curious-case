theorem solve_linear_equation_with_parameters:
  fixes a b c :: real
  assumes h0: "3 * a + 2 * b = c"
    and h1: "a = d"   
  shows "b = (c - 3 * d) / 2"
proof -
  have eq: "3 * a + 2 * b = c" using h0 by simp
  have "3 * d + 2 * b = c" using h1 eq by simp
  then have "2 * b = c - 3 * d" by (simp add: algebra_simps)
  then show ?thesis by (simp add: algebra_simps)
qed