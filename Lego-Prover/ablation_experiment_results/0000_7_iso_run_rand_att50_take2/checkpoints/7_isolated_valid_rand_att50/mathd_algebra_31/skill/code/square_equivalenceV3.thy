lemma square_equivalence:
  fixes a b :: real
  assumes "a = b"
  shows "a^2 = b^2"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  also have "a * a = b * b" using assms by (simp add: power2_eq_square)
  also have "b * b = b^2" by (simp add: power2_eq_square)
  finally show "a^2 = b^2" by simp
qed