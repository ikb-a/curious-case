lemma square_nonneg:
  fixes a b :: real
  assumes "a = b" and "a >= 0" and "b >= 0"
  shows "a^2 = b^2"
proof -
  from assms(1) have "b = a" by simp
  hence "b^2 = a^2" by (simp add: power2_eq_square)
  thus ?thesis by (simp add: assms(1))
qed