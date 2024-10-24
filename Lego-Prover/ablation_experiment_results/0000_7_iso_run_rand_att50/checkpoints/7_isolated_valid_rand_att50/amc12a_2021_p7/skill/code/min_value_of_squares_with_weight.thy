lemma min_value_of_squares_with_weight:
  fixes x y :: real
  assumes "w \<ge> 0"
  shows "w * (x^2 + y^2) \<ge> 0"
proof -
  have "x^2 + y^2 \<ge> 0" by auto
  thus ?thesis using assms by simp
qed