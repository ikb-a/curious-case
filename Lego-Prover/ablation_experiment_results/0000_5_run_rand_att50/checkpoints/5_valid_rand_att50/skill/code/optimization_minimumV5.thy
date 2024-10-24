lemma optimization_minimum:
  fixes x y :: real
  assumes "x^2 + y^2 + (x * y)^2 \<ge> 0"
  shows "x^2 + y^2 + (x * y)^2 + 1 \<ge> 1"
proof -
  from assms have "x^2 + y^2 + (x * y)^2 \<ge> 0" 
    by simp
  then have "x^2 + y^2 + (x * y)^2 + 1 \<ge> 0 + 1"
    by auto
  thus ?thesis
    by simp
qed