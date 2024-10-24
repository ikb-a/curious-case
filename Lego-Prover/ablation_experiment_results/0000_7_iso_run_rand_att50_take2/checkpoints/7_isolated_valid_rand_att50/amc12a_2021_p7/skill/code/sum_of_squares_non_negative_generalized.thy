lemma sum_of_squares_non_negative_generalized:
  fixes a b :: real
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 \<ge> 0" by auto
  have "b^2 \<ge> 0" by auto
  then show "a^2 + b^2 \<ge> 0" using `a^2 \<ge> 0` by (simp add: add_nonneg_nonneg)
qed