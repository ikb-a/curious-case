lemma minimum_value_of_quadratic:
  fixes a b c x :: real
  assumes "a > 0"
  shows "a * (x - b)^2 + c >= c"
proof -
  have "(x - b)^2 >= 0" by (simp add: power2_eq_square)
  then have "a * (x - b)^2 >= 0" using assms by auto
  then show ?thesis by (simp add: add_nonneg_nonneg)
qed