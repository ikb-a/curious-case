lemma division_identity:
  fixes a b :: real
  assumes "a \<noteq> 0"
  shows "(b * c) / a = (b / a) * c"
  using division_property[of a b] assms
  by (simp add: algebra_simps)