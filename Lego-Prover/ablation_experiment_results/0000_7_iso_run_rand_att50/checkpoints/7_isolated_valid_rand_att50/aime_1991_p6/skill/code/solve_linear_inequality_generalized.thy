lemma solve_linear_inequality_generalized:
  fixes a b c :: real
  assumes "a > 0"
  assumes "a * x + b < c"
  shows "x < (c - b) / a"
proof -
  have "a * x + b < c" using assms by simp
  then have "a * x < c - b" by simp
  then show ?thesis using assms by (simp add: field_simps)
qed