lemma sqrt_positive_nonneg:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  have "sqrt a = sqrt (max a 0)" by (simp add: assms)
  thus "sqrt a \<ge> 0" by auto
qed