lemma sqrt_diff_squares:
  fixes a b :: real
  assumes "a >= b"
  shows "sqrt (a^2 - b^2) = sqrt (a + b) * sqrt (a - b)"
proof -
  have "a^2 - b^2 = (a + b) * (a - b)" by sos
  thus ?thesis using assms by (metis mult.commute real_sqrt_mult)
qed