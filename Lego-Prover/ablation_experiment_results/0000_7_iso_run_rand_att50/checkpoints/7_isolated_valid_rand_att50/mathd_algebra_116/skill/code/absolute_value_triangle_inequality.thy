lemma absolute_value_triangle_inequality:
  fixes x y :: real
  shows "abs(x + y) \<le> abs(x) + abs(y)"
proof -
  have "abs(x + y) \<le> abs(x) + abs(y)" by (simp add: abs_triangle_ineq)
  then show ?thesis by simp
qed