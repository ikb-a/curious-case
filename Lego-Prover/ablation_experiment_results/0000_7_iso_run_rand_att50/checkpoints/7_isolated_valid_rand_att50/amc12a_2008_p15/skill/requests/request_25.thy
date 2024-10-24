lemma power_mod:
  fixes a :: nat
  assumes "n > 0"
  shows "(a^n) mod m = (a mod m)^n mod m"