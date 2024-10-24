lemma power_cycle_mod_10:
  shows "2^n mod 10 = (if n mod 4 = 0 then 6 else if n mod 4 = 1 then 2 else if n mod 4 = 2 then 4 else 8)"