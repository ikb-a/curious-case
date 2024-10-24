lemma integer_bounds:
  fixes n m :: nat
  assumes "m = a - b * n" "m >= 0" "n >= 0"
  shows "n <= a / b"