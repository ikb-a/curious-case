lemma non_negative_squares_any:
  fixes a b c :: real
  shows "a^2 >= 0" and "b^2 >= 0" and "c^2 >= 0"
proof -
  show "a^2 >= 0" by (rule non_negative_squares)
  show "b^2 >= 0" by (rule non_negative_squares)
  show "c^2 >= 0" by (rule non_negative_squares)
qed