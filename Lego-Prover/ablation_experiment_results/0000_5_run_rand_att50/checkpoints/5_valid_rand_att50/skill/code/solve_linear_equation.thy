lemma solve_linear_equation:
  fixes a b :: real
  assumes h0: "m * a + c = b"
  shows "c = b - m * a"
proof -
  have "m * a + c - m * a = b - m * a" using h0 by simp
  then show ?thesis by simp
qed