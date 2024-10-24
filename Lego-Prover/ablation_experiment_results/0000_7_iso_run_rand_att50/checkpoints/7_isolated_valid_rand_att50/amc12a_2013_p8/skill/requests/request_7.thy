lemma algebraic_manipulation:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
    and "x \<noteq> y"
  shows "x * y = 2"