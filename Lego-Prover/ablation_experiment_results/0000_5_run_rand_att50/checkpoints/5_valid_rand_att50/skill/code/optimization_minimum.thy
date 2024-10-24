lemma optimization_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 + (x * y)^2 \<ge> 0"
  shows "x^2 + y^2 + (x * y)^2 + 1 \<ge> 1"
proof -
  have "x^2 + y^2 + (x * y)^2 \<ge> 0" using assms by simp
  then have "x^2 + y^2 + (x * y)^2 + 1 \<ge> 0 + 1" 
    by (simp add: add_nonneg_nonneg)
  thus ?thesis by simp
qed