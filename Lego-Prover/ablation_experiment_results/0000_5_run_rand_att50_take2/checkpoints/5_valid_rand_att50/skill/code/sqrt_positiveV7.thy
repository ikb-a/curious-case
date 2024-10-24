lemma sqrt_positive:
  fixes x :: real
  assumes "x >= 0"
  shows "sqrt x >= 0"
proof -
  have "sqrt x * sqrt x = x" using assms by auto
  then show "sqrt x >= 0" using assms by (simp add: sqrt_def)
qed