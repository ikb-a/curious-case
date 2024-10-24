lemma optimization_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 + (x * y)^2 \<ge> 0"
  shows "x^2 + y^2 + (x * y)^2 + 1 \<ge> 1"
proof -
  have "x^2 + y^2 + (x * y)^2 + 1 = (x^2 + y^2 + (x * y)^2) + 1"
    by simp
  moreover have "x^2 + y^2 + (x * y)^2 \<ge> 0" using assms by simp
  ultimately show "x^2 + y^2 + (x * y)^2 + 1 \<ge> 1"
    by auto
qed