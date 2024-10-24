lemma sqrt_diff_square_nonneg:
  fixes a b :: real
  assumes "a >= b" "b >= 0"
  shows "sqrt (a^2 - b^2) * sqrt (a^2 - b^2) = a^2 - b^2"
proof -
  have "sqrt (a^2 - b^2) * sqrt (a^2 - b^2) = a^2 - b^2" using assms by auto
  then show ?thesis by simp
qed