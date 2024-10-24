lemma sqrt_non_negative:
  fixes a :: real
  assumes "a >= 0"
  shows "sqrt a >= 0"
proof -
  have "sqrt a * sqrt a = a" using assms by auto
  then have "sqrt a >= 0" using assms by auto
  thus ?thesis by simp
qed