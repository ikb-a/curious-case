lemma prime_properties:
  fixes p :: nat
  assumes "prime p"
  shows "p > 1"
  by (metis prime_def)