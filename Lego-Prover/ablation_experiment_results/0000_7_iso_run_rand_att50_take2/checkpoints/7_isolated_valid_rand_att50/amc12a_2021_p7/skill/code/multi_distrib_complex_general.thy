lemma multi_distrib_complex_general:
  fixes a b c d :: complex
  shows "(a + b) * (c + d) = a * c + a * d + b * c + b * d"
proof -
  have "a * c + a * d + b * c + b * d = (a + b) * (c + d)"
    by (simp add: distrib_left distrib_right)
  then show ?thesis by simp
qed