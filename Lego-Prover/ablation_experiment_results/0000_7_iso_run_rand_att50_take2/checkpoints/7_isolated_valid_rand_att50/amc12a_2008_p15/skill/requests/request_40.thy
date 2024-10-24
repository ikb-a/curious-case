lemma mod_cycle:
  fixes a :: nat
  assumes "n > 0" "a > 0"
  shows "((a^n) mod 10) = (a mod 10) ^ (n mod 4) mod 10"