lemma cross_multiplication:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
    and "x \<noteq> 0" "y \<noteq> 0" "x \<noteq> y"
  shows "(x - y) * x * y = 2 * (x - y)"