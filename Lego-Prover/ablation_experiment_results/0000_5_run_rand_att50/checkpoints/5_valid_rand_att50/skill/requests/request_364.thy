lemma mod_power_cycle:
  fixes a :: nat and m :: nat
  assumes "a > 0" and "m > 0"
  shows "((a^n) mod m) = ((a^(n mod (order a m))) mod m)"