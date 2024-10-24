theorem solve_linear_equation_general:
  fixes a b c :: real
  assumes "a \<noteq> 0" 
  and "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a * x + b = c" using assms by simp
  then have "a * x = c - b" by simp
  then show ?thesis using assms by (simp add: field_split_simps)
qed