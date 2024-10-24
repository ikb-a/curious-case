lemma sqrt_addition:
  fixes x :: real
  assumes "x = 72"
  shows "sqrt(x + 9) = 9"
proof -
  have "x + 9 = 72 + 9" using assms by simp
  then have "x + 9 = 81" by simp
  then have "sqrt(x + 9) = sqrt(81)" by (simp add: \<open>x + 9 = 81\<close>)
  then show ?thesis by simp
qed