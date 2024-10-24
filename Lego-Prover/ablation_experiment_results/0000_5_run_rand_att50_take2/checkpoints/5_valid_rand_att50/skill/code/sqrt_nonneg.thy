lemma sqrt_nonneg:
  fixes a :: real
  assumes "a \<ge> 0"
  shows "sqrt a \<ge> 0"
proof -
  have "sqrt a * sqrt a = a" using assms by (simp add: real_sqrt_eq_iff)
  then have "sqrt a \<ge> 0" 
    using assms by (simp add: real_sqrt_eq_iff)
  thus ?thesis by auto
qed