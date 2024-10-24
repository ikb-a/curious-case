lemma non_negative_square_root:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt(a^2) = a"
proof -
  have "sqrt(a^2) = a" if "a >= 0" for a
    using that by (simp add: power2_eq_square)
  thus ?thesis using assms by simp
qed