lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n" "x * 7 + y * 8 = S"
  shows "y = S - 7 * n"