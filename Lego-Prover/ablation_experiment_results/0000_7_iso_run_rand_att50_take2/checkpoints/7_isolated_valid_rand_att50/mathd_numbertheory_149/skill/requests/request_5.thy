lemma lcm_properties:
  fixes a b :: nat
  shows "lcm a b = (a * b) div gcd a b"