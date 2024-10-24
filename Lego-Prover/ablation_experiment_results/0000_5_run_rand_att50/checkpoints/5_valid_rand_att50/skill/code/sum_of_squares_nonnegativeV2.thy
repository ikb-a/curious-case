lemma sum_of_squares_nonnegative:
  fixes a b :: real
  shows "a^2 + b^2 \<ge> 0"
proof -
  have "a^2 \<ge> 0" and "b^2 \<ge> 0" by (simp_all add: power2_eq_square)
  then show ?thesis by auto
qed