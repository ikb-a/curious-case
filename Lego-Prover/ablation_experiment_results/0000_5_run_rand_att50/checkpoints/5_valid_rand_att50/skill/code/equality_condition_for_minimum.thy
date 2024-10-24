lemma equality_condition_for_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 = 0"
  shows "x = 0 \<and> y = 0"
proof -
  have "x^2 >= 0" by (simp)
  have "y^2 >= 0" by (simp)
  moreover have "x^2 + y^2 = 0" using assms by simp
  ultimately have "x^2 = 0" and "y^2 = 0" 
    by auto
  have "x = 0" using `x^2 = 0` by (simp)
  have "y = 0" using `y^2 = 0` by (simp)
  thus ?thesis by (metis \<open>x = 0\<close>)
qed