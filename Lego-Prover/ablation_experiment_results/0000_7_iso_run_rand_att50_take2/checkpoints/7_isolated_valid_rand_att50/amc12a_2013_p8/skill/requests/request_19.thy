lemma distinct_nonzero:
  fixes x y :: real
  assumes "x \<noteq> 0" 
    and "y \<noteq> 0" 
    and "x \<noteq> y"
  shows "x * y \<noteq> 0"