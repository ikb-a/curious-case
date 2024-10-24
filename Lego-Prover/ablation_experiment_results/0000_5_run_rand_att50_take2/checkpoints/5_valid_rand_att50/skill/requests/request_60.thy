lemma divide_non_zero:
  fixes a b :: real
  assumes "a = b" "c \<noteq> 0"
  shows "a/c = b/c"