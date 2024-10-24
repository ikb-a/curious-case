lemma log_power_identity:
  fixes a b :: real
  assumes "a > 0" "a \<noteq> 1" "b > 0"
  shows "log a (b^2) = 2 * log a b"
  using log_exponentiation[of a b 2] assms by fastforce