lemma mod_add_power_general:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "(x + b) mod n = (a + b) mod n" using assms by (smt (verit) mod_add_left_eq)
  then show ?thesis using assms by (metis mod_add_left_eq power_mod)
qed