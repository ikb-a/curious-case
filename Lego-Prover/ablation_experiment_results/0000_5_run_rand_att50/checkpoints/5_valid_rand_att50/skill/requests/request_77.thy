lemma cross_multiply:
  fixes x y :: real
  assumes "x - y \<noteq> 0"
  shows "(x - y) * (x * y) = 2 * (x - y)"