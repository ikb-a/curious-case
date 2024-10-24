lemma min_sum_of_squares:
  fixes a b :: real
  shows "a^2 + b^2 >= 0"
proof -
  have "a^2 >= 0" using non_negative_power[of a] by simp
  have "b^2 >= 0" using non_negative_power[of b] by simp
  then show "a^2 + b^2 >= 0" using `a^2 >= 0` by (simp add: add_nonneg_nonneg)
qed