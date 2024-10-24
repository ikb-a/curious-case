lemma factorization:
  fixes a b :: real
  shows "a - b = (a - b) * 1"
proof -
  have "a - b = (a - b) * 1" by (simp add: algebra_simps)
  thus ?thesis by simp
qed