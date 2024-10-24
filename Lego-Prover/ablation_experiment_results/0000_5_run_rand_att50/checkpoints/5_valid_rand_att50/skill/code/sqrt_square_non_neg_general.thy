lemma sqrt_square_non_neg_general:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt (a^2) = a"
proof -
  have "sqrt (a^2) = sqrt (a * a)" by (simp add: power2_eq_square)
  also have "... = sqrt a * sqrt a" by (simp add: assms)
  also have "... = a" using assms by (simp add: sqrt_square_non_neg)
  finally show ?thesis .
qed