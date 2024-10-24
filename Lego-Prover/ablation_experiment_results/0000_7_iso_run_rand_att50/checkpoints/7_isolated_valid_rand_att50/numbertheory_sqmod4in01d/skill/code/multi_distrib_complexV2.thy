lemma multi_distrib_complex:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * (c + d) + b * (c + d)"
proof -
  have "(a + b) * (c + d) = a * (c + d) + b * (c + d)"
    by (simp add: distrib_right)
  then show ?thesis by simp
qed