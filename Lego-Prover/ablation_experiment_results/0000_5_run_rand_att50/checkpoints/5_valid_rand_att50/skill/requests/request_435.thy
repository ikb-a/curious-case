lemma periodic_units_digit:
  fixes a :: nat
  assumes "a > 0"
  shows "∃n. ∀m. (a^m) mod 10 = (a^(m + n)) mod 10"