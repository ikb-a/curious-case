lemma square_nonneg:
  fixes x :: real
  shows "x^2 >= 0"
proof -
  have "x^2 = x * x" by sos
  thus ?thesis by (simp add: mult_nonneg_nonneg)
qed