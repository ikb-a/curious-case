lemma not_prime_for_large_n:
  fixes n :: nat
  assumes "n > 3"
  shows "\<not> prime ((n - 2) * (n - 1))"