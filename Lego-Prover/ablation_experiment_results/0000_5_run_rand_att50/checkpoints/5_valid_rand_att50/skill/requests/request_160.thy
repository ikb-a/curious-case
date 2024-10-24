lemma lcm_coprime:
  fixes a b :: nat
  assumes "gcd a b = 1"
  shows "lcm a b = a * b"