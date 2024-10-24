lemma mod_add_power_general:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "x mod n = a" by (simp add: assms(4))
  then have "(x + b) mod n = (a + b) mod n"
    by (smt (verit) mod_add_left_eq)
  then show ?thesis
    by (metis add.commute power_mod)
qed