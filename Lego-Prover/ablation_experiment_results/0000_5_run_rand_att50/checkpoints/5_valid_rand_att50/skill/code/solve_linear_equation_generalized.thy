theorem solve_linear_equation_generalized:
  fixes a b :: real
  assumes "a \<noteq> 0" "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a * x + b = c" using assms by simp
  then have "a * x = c - b" by simp
  then show "x = (c - b) / a" using assms(1) by (auto simp: field_simps)
qed