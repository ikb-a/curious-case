lemma mod_add_power_special:
  fixes x n a b :: nat
  assumes "n > 0" "b > 0" "x mod n = a"
  shows "((x + b) ^ 2) mod n = ((a + b) ^ 2) mod n"
  using mod_add_power_general[of x n a b 2] by (smt (verit) assms(1) assms(2) assms(3) mod_add_power_general pos2)