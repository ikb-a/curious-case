lemma sqrt_positive_general:
  fixes a :: real
  assumes "a > 0" and "n > 0"
  shows "sqrt a > 0 \<Longrightarrow> sqrt (a + n) > 0"
proof -
  have "a + n > 0" using assms by simp
  then show "sqrt (a + n) > 0" by auto
qed