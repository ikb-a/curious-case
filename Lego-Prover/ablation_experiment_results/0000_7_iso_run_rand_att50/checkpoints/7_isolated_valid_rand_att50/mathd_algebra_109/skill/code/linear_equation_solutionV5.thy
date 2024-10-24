theorem linear_equation_solution:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  assumes "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a * x + b = c" using assms by simp
  then have "a * x = c - b" by simp
  then show "x = (c - b) / a" using assms(1) by (simp add: field_simps)
qed