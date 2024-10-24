lemma optimization_minimum:
  fixes x y :: real
  assumes "x = 0" "y = 0"
  shows "1 = ((x * y) - 1)^2 + (x + y)^2"
proof -
  from assms have "x * y = 0" 
    by simp
  from assms have "x + y = 0" 
    by simp
  have "((x * y) - 1)^2 + (x + y)^2 = (0 - 1)^2 + 0^2" 
    by (simp add: `x * y = 0` `x + y = 0`)
  then show "1 = ((x * y) - 1)^2 + (x + y)^2" 
    by simp
qed