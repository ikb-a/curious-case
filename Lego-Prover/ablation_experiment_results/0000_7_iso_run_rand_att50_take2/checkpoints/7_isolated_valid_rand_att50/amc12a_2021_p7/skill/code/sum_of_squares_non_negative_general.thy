lemma sum_of_squares_non_negative_general:
  fixes x y :: real
  assumes "x = a" and "y = b"  
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "a^2 \<ge> 0" using assms by auto
  have "b^2 \<ge> 0" using assms by auto
  then show "x^2 + y^2 \<ge> 0" using `a^2 \<ge> 0` `b^2 \<ge> 0` by (simp add: add_nonneg_nonneg)
qed