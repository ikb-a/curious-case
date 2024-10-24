lemma optimization_minimum:
  fixes x y :: real
  assumes "x = 0" "y = 0"
  shows "1 = ((x * y) - 1)^2 + (x + y)^2"
proof -
  have "x * y = 0" using assms(1) assms(2) by simp
  have "x + y = 0" using assms(1) assms(2) by simp
  let ?lhs = "((x * y) - 1)^2 + (x + y)^2"
  have "?lhs = (0 - 1)^2 + 0^2" 
    by (simp add: `x * y = 0` `x + y = 0`)
  then have "?lhs = 1^2 + 0" 
    by simp
  thus ?thesis 
    by simp
qed