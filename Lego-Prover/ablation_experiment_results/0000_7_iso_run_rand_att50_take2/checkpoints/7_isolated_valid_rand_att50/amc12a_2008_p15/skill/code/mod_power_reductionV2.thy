lemma mod_power_reduction:
  fixes a n :: nat
  assumes "a > 0" "n > 0"
  shows "(a^n) mod m = ((a mod m)^n) mod m"
  by (metis assms power_mod)