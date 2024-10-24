lemma sqrt_equivalence:
  fixes x :: real
  assumes "x = 72"
  shows "sqrt (x + 9) = 9"
proof -
  have "x + 9 = 72 + 9" using assms by simp
  hence "x + 9 = 81" by simp
  then show "sqrt (x + 9) = 9" by (simp add: sqrt_def)
qed