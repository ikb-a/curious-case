lemma sqrt_limit:
  fixes x :: real
  assumes "x + 9 = 9^2"
  shows "x = 72"
proof -
  have "x + 9 = 81" using assms by (simp)
  then show ?thesis by auto
qed