lemma units_digit_power:
  fixes a :: nat and n :: nat
  assumes "a > 0"
  shows "((a^n) mod 10) = (if n mod 4 = 0 then (1::nat) else if n mod 4 = 1 then a mod 10 else if n mod 4 = 2 then (a^2 mod 10) else (a^3 mod 10))"