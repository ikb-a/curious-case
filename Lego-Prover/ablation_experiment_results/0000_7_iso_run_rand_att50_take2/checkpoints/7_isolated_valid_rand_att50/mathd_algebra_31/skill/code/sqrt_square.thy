lemma sqrt_square:
  fixes a :: real
  assumes "0 \<le> a"
  shows "sqrt a * sqrt a = a"
proof -
  have "sqrt a ^ 2 = a" using assms by auto
  thus ?thesis by (simp only: power2_eq_square)
qed