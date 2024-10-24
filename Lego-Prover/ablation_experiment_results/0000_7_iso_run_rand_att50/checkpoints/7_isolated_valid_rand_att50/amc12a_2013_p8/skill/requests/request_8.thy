lemma common_denominator:
  fixes a b c d :: real
  assumes "b \<noteq> 0" "d \<noteq> 0"
  shows "(a/b) - (c/d) = (ad - bc) / (bd)"