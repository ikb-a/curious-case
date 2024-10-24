lemma sqrt_sum_square:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "sqrt (a + b) * sqrt (a + b) = a + b"
proof -
  have "sqrt (a + b) * sqrt (a + b) = a + b" using assms by auto
  thus ?thesis by simp
qed