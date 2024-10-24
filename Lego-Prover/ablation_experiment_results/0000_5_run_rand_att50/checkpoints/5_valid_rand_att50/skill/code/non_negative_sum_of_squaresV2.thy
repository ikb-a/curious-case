lemma non_negative_sum_of_squares:
  fixes a b :: real
  shows "0 \<le> a^2 + b^2"
proof -
  have "a^2 \<ge> 0" and "b^2 \<ge> 0" by (simp_all add: power2_eq_square)
  then show ?thesis by (simp add: add_nonneg_nonneg)
qed