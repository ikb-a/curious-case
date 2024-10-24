theorem solve_linear_equation_generalized:
  fixes a b c :: real
  assumes "a \<noteq> 0"
  shows "a * x + b = c \<Longrightarrow> x = (c - b) / a"
proof -
  assume eq: "a * x + b = c"
  then have "a * x = c - b" by simp
  then show "x = (c - b) / a" using assms by (simp add: field_simps)
qed