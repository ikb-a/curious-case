lemma manipulate_equation:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
    and "x \<noteq> y"
  shows "xy = 2"