lemma mod_power:
  fixes a n :: nat
  assumes "a > 0" "n > 0"
  shows "(a mod m)^n mod m = a^n mod m"
  using assms by (metis power_mod)