lemma floor_distribution:
  fixes n :: nat
  assumes "n = floor r" "x + (73 - x) = 73"
  shows "n * (73 - x) + (n + 1) * x = 546"