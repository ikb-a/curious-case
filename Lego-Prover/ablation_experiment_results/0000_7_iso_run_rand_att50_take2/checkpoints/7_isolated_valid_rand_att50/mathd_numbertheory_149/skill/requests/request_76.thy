lemma lcm_property:
  fixes a b :: nat
  assumes "a > 0" "b > 0"
  shows "lcm a b = (a * b) div gcd a b"