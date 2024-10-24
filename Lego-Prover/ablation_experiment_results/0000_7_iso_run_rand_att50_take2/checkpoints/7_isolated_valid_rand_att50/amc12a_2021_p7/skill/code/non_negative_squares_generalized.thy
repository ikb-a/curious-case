lemma non_negative_squares_generalized:
  fixes a b :: real
  assumes "a >= 0" "b >= 0"
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  show "a^2 >= 0" using non_negative_power_generalized[of a] assms(1) by simp
  show "b^2 >= 0" using non_negative_power_generalized[of b] assms(2) by simp
qed