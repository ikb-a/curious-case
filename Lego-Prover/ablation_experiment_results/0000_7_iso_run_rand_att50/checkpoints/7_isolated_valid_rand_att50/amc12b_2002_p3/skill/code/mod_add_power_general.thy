lemma mod_add_power_general:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "x mod n = a"
  shows "((x + b)^c + d) mod n = ((a + b)^c + d) mod n"
proof -
  have "((x + b)^c + d) mod n = (((x + b)^c mod n) + d) mod n"
    by presburger
  also have "... = (((a + b)^c) mod n + d) mod n"
    using mod_add_power[of x n a b c] assms by (smt (verit) add.commute mod_add_cong mod_add_right_eq power_mod)
  finally show ?thesis by presburger
qed