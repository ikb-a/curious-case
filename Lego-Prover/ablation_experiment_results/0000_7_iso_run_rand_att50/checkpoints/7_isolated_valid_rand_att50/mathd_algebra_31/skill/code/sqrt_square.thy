lemma sqrt_square:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a ^ 2 = a"
proof -
  have "sqrt a ^ 2 = (sqrt a) * (sqrt a)" by (metis power2_eq_square)
  also have "... = a" using assms by auto
  finally show ?thesis by simp
qed