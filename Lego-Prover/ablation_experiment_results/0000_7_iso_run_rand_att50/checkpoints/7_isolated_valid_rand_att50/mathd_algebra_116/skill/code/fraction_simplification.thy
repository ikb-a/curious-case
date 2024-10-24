lemma fraction_simplification:
  fixes a b :: real
  assumes "b > 0"
  shows "(a / b) * (a / b) = a^2 / b^2"
proof -
  have "(a / b)^2 = a^2 / b^2" using assms by (simp add: power2_eq_square)
  thus ?thesis by sos
qed