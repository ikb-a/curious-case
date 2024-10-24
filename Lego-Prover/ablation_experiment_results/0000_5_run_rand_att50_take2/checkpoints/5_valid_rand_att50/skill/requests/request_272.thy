lemma integer_distribution:
  fixes n :: nat
  assumes "x + y = n" "x, y ≥ 0"
  shows "x ≤ n ∧ y ≤ n"