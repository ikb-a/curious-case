lemma non_negative_squares:
  fixes a b :: real
  shows "a^2 >= 0" and "b^2 >= 0"
proof -
  show "a^2 >= 0" using non_negative_power[of a] by simp
  show "b^2 >= 0" using non_negative_power[of b] by simp
qed