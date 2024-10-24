lemma sqrt_difference_square:
  fixes a b :: real
  assumes "a >= 0" "b >= 0" "a >= b"
  shows "sqrt (a - b) * sqrt (a - b) = a - b"
proof -
  have "sqrt (a - b) * sqrt (a - b) = a - b" using assms by auto
  thus ?thesis by simp
qed