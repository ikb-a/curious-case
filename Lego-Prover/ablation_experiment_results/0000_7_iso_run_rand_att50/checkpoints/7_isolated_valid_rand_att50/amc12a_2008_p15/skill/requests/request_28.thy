lemma mod_power_cycle:
  fixes a :: nat and n :: nat and m :: nat
  assumes "m > 0"
  shows "(a ^ n) mod m = (a ^ (n mod (m - 1))) mod m"