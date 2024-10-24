lemma expand_and_minimize:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "((x * y) - 1)^2 \<ge> 0" 
    by auto
  moreover have "(x + y)^2 \<ge> 0"
    by auto
  ultimately have "((x * y) - 1)^2 + (x + y)^2 \<ge> 0 + 0"
    by (simp add: add_nonneg_nonneg)
  have "((x * y) - 1)^2 + (x + y)^2 = (x * y)^2 - 2*(x * y) + 1 + (x^2 + 2*x*y + y^2)"
    by sos
  have "1 + (x * y)^2 - 2*(x * y) + x^2 + 2*x*y + y^2 = 1 + (x^2 + y^2 + (x * y)^2)"
    by (simp add: algebra_simps)
  have "1 + (x^2 + y^2 + 2*x*y) - 2*(x * y) = 1 + (x^2 + y^2)"
    by (simp add: algebra_simps)
  thus "1 \<le> (x * y - 1)^2 + (x + y)^2"
    by sos
qed