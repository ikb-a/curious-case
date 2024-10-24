lemma solve_linear_inequality_with_bounds:
  fixes a b c d :: real
  assumes "a > 0" "b < c"
  shows "d < (c - b) / a \<Longrightarrow> a * d + b < c"
proof -
  assume "d < (c - b) / a"
  then have "a * d < c - b" using assms by (simp add: field_simps)
  thus "a * d + b < c" using assms by (simp add: field_simps)
qed