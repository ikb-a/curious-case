lemma nonneg_square:
  fixes a :: real
  shows "a^2 \<ge> 0"
proof -
  have "a^2 = a * a" by (simp add: power2_eq_square)
  thus ?thesis by (simp add: mult_nonneg_nonneg)
qed