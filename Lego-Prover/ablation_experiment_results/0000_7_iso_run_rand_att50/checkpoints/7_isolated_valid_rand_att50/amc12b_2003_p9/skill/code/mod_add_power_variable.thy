lemma mod_add_power_variable:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a" "d > 0"
  shows "((x + b)^c + d) mod n = ((a + b)^c + d) mod n"
proof -
  have "((x + b)^c + d) mod n = (((x + b)^c mod n) + d) mod n"
    by (metis (no_types, lifting) mod_add_left_eq)
  also have "... = (((a + b)^c) mod n + d) mod n"
    using mod_add_power_general[of x n a b c] by (smt (verit) add.commute assms(4) mod_add_cong mod_add_right_eq power_mod)
  finally show ?thesis by presburger
qed