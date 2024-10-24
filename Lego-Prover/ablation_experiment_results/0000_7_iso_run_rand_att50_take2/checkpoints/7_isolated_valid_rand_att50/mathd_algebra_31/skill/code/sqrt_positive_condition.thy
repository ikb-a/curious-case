lemma sqrt_positive_condition:
  fixes a :: real
  assumes "a > 0"
  shows "sqrt a > 0"
proof -
  have "sqrt a * sqrt a = a" using assms by auto
  then have "sqrt a * sqrt a > 0" using assms by (simp add: mult_pos_pos)
  thus ?thesis using assms by auto
qed