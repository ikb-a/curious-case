lemma solve_linear_equation:
  fixes a b c x :: real
  assumes "a \<noteq> 0" and "a * x + b = c"
  shows "x = (c - b) / a"
proof -
  have "a * x = c - b" using assms(2) by simp
  then show ?thesis using assms(1) by (auto simp: field_simps)
qed