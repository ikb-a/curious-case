lemma non_negative_squares:
  fixes a b c :: real
  shows "a^2 >= 0" and "b^2 >= 0" and "c^2 >= 0"
  using non_negative_square by auto