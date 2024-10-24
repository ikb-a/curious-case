lemma mod_add_power_natural:
  fixes x a b c n :: nat
  assumes "n > 0" "b > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
  using mod_add_power_general assms by blast