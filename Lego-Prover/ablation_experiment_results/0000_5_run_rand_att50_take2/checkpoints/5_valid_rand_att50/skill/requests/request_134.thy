lemma square_mod_10:
  fixes x :: nat
  shows "(x mod 10)^2 mod 10 = (if x mod 10 = 0 then 0 else if x mod 10 = 1 then 1 else if x mod 10 = 2 then 4 else if x mod 10 = 3 then 9 else if x mod 10 = 4 then 6 else if x mod 10 = 5 then 5 else if x mod 10 = 6 then 6 else if x mod 10 = 7 then 9 else if x mod 10 = 8 then 4 else 1)"