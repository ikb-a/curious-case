lemma sum_of_set:
  fixes S :: "nat set"
  assumes "finite S"
  shows "sum S = \<Sum> x\<in>S. x"