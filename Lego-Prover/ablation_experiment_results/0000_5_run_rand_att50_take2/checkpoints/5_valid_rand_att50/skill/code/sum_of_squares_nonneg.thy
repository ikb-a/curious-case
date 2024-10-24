lemma sum_of_squares_nonneg:
  fixes x y :: real
  shows "x^2 + y^2 \<ge> 0"
proof -
  have "x^2 \<ge> 0" by auto
  have "y^2 \<ge> 0" by auto
  then show ?thesis by auto
qed