lemma negation_identity:
  fixes a :: real
  shows "a = -(-a)"
proof -
  have "a + (-a) = 0" by simp
  then show ?thesis by (simp add: algebra_simps)
qed