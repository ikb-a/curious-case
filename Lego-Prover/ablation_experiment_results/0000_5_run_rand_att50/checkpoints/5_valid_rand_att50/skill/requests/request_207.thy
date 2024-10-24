lemma mod_power_cycle:
  fixes a :: nat
  assumes "a > 0"
  shows "((2^a) mod 10) = (if a mod 4 = 0 then 6 else if a mod 4 = 1 then 2 else if a mod 4 = 2 then 4 else 8)"