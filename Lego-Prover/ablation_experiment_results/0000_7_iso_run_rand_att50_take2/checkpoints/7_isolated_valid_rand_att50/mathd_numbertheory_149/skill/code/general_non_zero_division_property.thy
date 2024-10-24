lemma general_non_zero_division_property:
  fixes a :: "'a::field"
  assumes "a \<noteq> 0"
  shows "a * (1 / a) = 1"
  by (simp add: assms)