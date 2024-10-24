lemma divide_both_sides:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y" 
      and "x \<noteq> 0" 
      and "y \<noteq> 0"
      and "x \<noteq> y"
  shows "1 = 2 / (xy)"