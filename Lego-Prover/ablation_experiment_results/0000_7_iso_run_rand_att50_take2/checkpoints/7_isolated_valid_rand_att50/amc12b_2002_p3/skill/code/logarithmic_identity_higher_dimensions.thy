lemma logarithmic_identity_higher_dimensions:
  fixes a b :: real
  assumes "a > 0" and "a \<noteq> 1" and "b > 0" and "log a b = c"
  shows "b = a ^ c"
  using logarithmic_identity_multi_dimensional[of a b c] by (metis assms(1) assms(2) assms(3) assms(4))