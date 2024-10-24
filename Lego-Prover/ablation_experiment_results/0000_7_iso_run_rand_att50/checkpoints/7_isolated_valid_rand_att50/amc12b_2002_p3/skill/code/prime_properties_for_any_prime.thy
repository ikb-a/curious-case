lemma prime_properties_for_any_prime:
  fixes p :: nat
  assumes "prime p"
  shows "p > 1"
  using prime_properties_generalized[of p] assms by simp