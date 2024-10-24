lemma non_zero_division_property_general:
  fixes a b :: real
  assumes "a \<noteq> 0" "b \<noteq> 0"
  shows "a * (1 / a) = 1" and "b * (1 / b) = 1"
proof -
  show "a * (1 / a) = 1" using assms by simp
  show "b * (1 / b) = 1" using assms by simp
qed