lemma equality_condition_for_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 = 0"
  shows "x = 0 \<and> y = 0"
proof -
  have "x^2 \<ge> 0" by simp
  have "y^2 \<ge> 0" by simp
  have "x^2 + y^2 = 0 \<Longrightarrow> x^2 = 0 \<and> y^2 = 0"
    using assms by auto
  then have "x^2 = 0" by (simp add: assms)
  then have "x = 0" by auto
  moreover have "y^2 = 0" using `x^2 + y^2 = 0` `x^2 = 0` by simp
  then have "y = 0" by auto
  ultimately show "x = 0 \<and> y = 0" by simp
qed