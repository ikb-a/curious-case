lemma gcd_lcm_property:
  fixes a b :: nat
  shows "gcd a b * lcm a b = a * b"
  by auto