lemma double_square_expanded:
  fixes x :: real
  shows "2 * x^2 = x^2 + x^2"
  by (simp add: add.commute)