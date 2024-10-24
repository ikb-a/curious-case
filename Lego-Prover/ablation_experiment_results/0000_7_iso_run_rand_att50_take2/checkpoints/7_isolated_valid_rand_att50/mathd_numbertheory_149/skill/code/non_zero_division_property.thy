lemma non_zero_division_property:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1" and "b * (1 / b) = 1"
  by (simp_all add: assms)