lemma mod_power:
  fixes a n :: nat
  assumes "n > 0"
  shows "a^n mod n = (a mod n)^n mod n"