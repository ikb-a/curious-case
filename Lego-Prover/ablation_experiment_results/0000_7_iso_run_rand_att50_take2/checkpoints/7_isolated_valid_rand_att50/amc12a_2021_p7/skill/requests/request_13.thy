theorem n_equals_3:
  fixes n :: nat
  assumes "n > 0" and "prime (n^2 - 3n + 2)"
  shows "n = 3"