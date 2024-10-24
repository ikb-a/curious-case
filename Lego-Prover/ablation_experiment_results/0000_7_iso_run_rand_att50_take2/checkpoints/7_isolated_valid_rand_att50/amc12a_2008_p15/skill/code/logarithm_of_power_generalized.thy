lemma logarithm_of_power_generalized:
  fixes a :: real
  assumes "a > 0" "a \<noteq> 1" "k > 0"
  shows "log a (a^k) = k"
  using logarithm_of_power[of a k] by (metis assms(1) assms(2) assms(3))