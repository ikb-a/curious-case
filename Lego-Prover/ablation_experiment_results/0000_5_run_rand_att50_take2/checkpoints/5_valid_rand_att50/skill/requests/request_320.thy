lemma units_digit_power:
  fixes n :: nat
  shows "n mod 10 = (n mod 4 = 0) ⟹ (2^n mod 10 = 6) ∧ (2^n mod 10 = 2) ∧ (2^n mod 10 = 4) ∧ (2^n mod 10 = 8)"