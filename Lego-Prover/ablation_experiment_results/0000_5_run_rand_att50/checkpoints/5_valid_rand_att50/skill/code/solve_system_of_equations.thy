lemma solve_system_of_equations:
  fixes a b :: real
  assumes h0: "3 * a + 2 * b = 12"
    and h1: "a = 4"
  shows "b = (12 - 3 * a) / 2"
proof -
  have "b = (12 - 3 * a) / 2" using h0 by (simp add: h1)
  then show ?thesis by simp
qed