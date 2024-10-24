lemma square_equivalence:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  moreover have "b^2 = b * b" by (simp add: power2_eq_square)
  moreover have "a * a = b * b" using assms by (metis assms power2_eq_square)
  ultimately show ?thesis by simp
qed