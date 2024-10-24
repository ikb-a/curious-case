lemma integer_distribution:
  fixes n :: nat
  assumes "n > 0"
  shows "(\<Sum> k = 0..n. k) = n * (n + 1) div 2"