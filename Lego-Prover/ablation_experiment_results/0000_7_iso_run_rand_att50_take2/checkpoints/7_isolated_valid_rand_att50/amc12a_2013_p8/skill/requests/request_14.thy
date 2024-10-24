lemma cross_multiply:
  fixes a b c d :: real
  assumes "b \<noteq> 0" and "d \<noteq> 0"
  shows "(a/b = c/d) \<longleftrightarrow> (a * d = b * c)"