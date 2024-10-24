lemma sqrt_eq_multi_dim:
  fixes x :: real
  assumes "sqrt (x + d) = c" and "d > 0" and "c > 0"
  shows "x = c^2 - d"
proof -
  have "x + d = c^2" using assms by auto
  then have "x = c^2 - d" by simp
  thus ?thesis by simp
qed