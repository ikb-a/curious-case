theorem linear_system_solution:
  fixes a b c :: real
  assumes h0: "3*a + 2*b = c"
    and h1: "a = 4"
  shows "b = (c - 12) / 2"
proof -
  have eq: "3*a + 2*b = c" using h0 by simp
  have sub: "3 * 4 + 2 * b = c" using h1 eq by simp
  have simplified: "12 + 2*b = c" using sub by simp
  then show ?thesis by (simp add: algebra_simps)
qed