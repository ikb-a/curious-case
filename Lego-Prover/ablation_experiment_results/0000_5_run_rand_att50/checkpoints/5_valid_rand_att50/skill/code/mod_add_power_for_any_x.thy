lemma mod_add_power_for_any_x:
  fixes x n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0"
  shows "((x + b)^c) mod n = ((x mod n + b)^c) mod n"
proof -
  have "(x + b)^c mod n = ((x mod n) + b)^c mod n"
    by (smt (verit) mod_add_left_eq power_mod)
  thus ?thesis by auto
qed