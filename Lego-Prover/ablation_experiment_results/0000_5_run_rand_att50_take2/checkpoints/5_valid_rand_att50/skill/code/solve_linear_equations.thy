theorem solve_linear_equations:
  fixes a b x :: real
  assumes eq1: "3 * a + 2 * b = 12"
    and eq2: "a = x"
  shows "b = (12 - 3 * x) / 2"
proof -
  have "3 * a + 2 * b = 12" using eq1 by simp
  then have "3 * x + 2 * b = 12" using eq2 by simp
  hence "2 * b = 12 - 3 * x" by simp
  thus ?thesis by (simp add: field_simps)
qed