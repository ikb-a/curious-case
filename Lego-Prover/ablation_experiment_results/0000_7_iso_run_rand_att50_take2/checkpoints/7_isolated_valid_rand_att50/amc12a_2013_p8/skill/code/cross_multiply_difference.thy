lemma cross_multiply_difference:
  fixes a b c d :: real
  assumes "b \<noteq> a" and "d \<noteq> c"
  shows "(a - b) * (c - d) = (a * c - a * d - b * c + b * d)"
proof -
  have "a * c - a * d - b * c + b * d = (a - b) * (c - d)"
    by (simp add: algebra_simps)
  thus ?thesis by simp
qed