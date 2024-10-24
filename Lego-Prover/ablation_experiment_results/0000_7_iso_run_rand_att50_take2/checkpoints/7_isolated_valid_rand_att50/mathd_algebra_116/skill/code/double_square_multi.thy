lemma double_square_multi:
  fixes x :: real
  assumes "k > 0"
  shows "k * x^2 = (k * (x^2))"
  by (metis assms)