lemma sqrt_square:
  fixes a :: real
  assumes "0 \<le> a"
  shows "sqrt a * sqrt a = a"
proof -
  have "sqrt a \<ge> 0" using assms by auto
  then have "sqrt a * sqrt a = a" using assms by (simp add: power2_eq_iff)
  thus ?thesis by simp
qed