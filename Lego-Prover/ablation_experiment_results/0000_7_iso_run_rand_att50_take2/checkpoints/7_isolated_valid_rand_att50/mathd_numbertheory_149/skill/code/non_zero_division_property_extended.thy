lemma non_zero_division_property_extended:
  fixes a b :: real and c :: real
  assumes "a \<noteq> 0" "b \<noteq> 0" "c \<noteq> 0"
  shows "a * (1 / a) = 1" and "b * (1 / b) = 1" and "c * (1 / c) = 1"
  by (simp_all add: assms)