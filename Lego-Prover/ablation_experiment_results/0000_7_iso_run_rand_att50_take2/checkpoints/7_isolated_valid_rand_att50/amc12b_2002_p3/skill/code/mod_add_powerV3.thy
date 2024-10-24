lemma mod_add_power:
  fixes x a b c n :: nat
  assumes "n > 0" "b > 0" "x mod n = a"
  shows "((x + b)^c) mod n = ((a + b)^c) mod n"
proof -
  have "((x + b)^c) mod n = (((x + b)^c mod n) + 0) mod n"
    by presburger
  also have "... = (((x mod n) + b)^c) mod n"
    using assms(3) by (smt (verit) calculation mod_add_left_eq power_mod)
  also have "... = ((a + b)^c) mod n"
    by (metis add.commute assms(3))
  finally show ?thesis by auto
qed