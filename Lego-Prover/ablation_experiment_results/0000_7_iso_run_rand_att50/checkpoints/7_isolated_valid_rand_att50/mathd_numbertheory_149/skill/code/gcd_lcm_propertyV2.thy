lemma gcd_lcm_property:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "gcd a b * lcm a b = a * b"
  using assms
  by auto