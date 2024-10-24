lemma mod_add_power_extended:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a" "d > 0"
  shows "((x + b)^c + d) mod n = ((a + b)^c + d) mod n"
proof -
  have "(x + b)^c mod n = ((x mod n) + b)^c mod n"
    by (smt (verit) mod_add_left_eq power_mod)
  also have "... = (a + b)^c mod n"
    using assms(4) by auto
  then have "((a + b)^c + d) mod n = ((a + b)^c mod n + d) mod n"
    by (metis mod_add_left_eq)
  then show ?thesis using assms by (metis add.commute calculation mod_add_cong)
qed