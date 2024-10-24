theorem algebra_solution:
  fixes a b :: real
  assumes h0 : "3 * a + 2 * b = 12"
    and h1 : "a = 4"
  shows "b = (12 - 3 * a) / 2"
proof -
  have eq: "3 * a + 2 * b = 12" using h0 by simp
  have "2 * b = 12 - 3 * a" using eq by simp
  then show ?thesis using h1 by simp
qed