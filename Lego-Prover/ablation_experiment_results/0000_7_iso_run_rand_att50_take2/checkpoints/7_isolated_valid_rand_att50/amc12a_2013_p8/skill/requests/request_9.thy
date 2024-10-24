lemma cross_multiplication:
  fixes x y :: real
  assumes "x \<noteq> 0" "y \<noteq> 0"
  shows "(x + 2/x = y + 2/y) \<longrightarrow> (x - y) * xy = 2 * (x - y)"