lemma mod_cycle:
  fixes a :: nat and m :: nat
  assumes "m > 0"
  shows "((a^n) mod m) = ((a^(n mod k)) mod m)" for some cycle length \( k \)