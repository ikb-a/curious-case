lemma power_mod_10:
  fixes n :: nat
  assumes "n > 0"
  shows "2^n mod 10 = (if n mod 4 = 1 then 2 else if n mod 4 = 2 then 4 else if n mod 4 = 3 then 8 else 6)"