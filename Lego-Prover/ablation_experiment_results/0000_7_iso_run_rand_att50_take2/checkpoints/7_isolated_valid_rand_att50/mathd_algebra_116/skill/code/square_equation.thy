lemma square_equation:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  from assms have "b^2 = b * b" by sos
  moreover have "a^2 = a * a" by sos
  ultimately show "a^2 = b^2" using assms by (simp add: power2_eq_square)
qed