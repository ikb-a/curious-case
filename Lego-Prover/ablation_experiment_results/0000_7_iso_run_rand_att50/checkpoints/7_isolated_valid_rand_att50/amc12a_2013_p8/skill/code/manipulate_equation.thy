lemma manipulate_equation:
  fixes a b c d :: real
  assumes h0: "a + b = c + d"
  shows "a - c = d - b"
proof -
  have "a - c = d - b" using h0 by (simp add: algebra_simps)
  thus ?thesis by simp
qed