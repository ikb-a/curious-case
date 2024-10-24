lemma division_property_extended:
  fixes a b c d :: real
  assumes "a \<noteq> 0"
  shows "b * c / a = (b / a) * c"
  using division_identity_generalized[of a b c] assms by simp