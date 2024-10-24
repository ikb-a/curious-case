lemma algebraic_manipulation:
  fixes x y :: real
  assumes "x + 2/x = y + 2/y"
  shows "x * y = 2 \<longrightarrow> x \<noteq> y"