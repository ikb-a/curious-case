lemma non_zero_operations:
  fixes a b c :: real
  assumes "a \<noteq> 0" "c \<noteq> 0"
  shows "a * (b / a) = b" and "(c / a) * a = c"
  using non_zero_division_generalized[of a b] non_zero_division_generalized[of c a] assms by auto