lemma division_identity_extended:
  fixes a b c d :: real
  assumes "a \<noteq> 0"
  shows "(b * c) / a = (b / a) * c"
  by (metis division_property_extended[of a b c] assms)