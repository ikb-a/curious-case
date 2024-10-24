lemma mod_add_power_general:
  fixes x a b c d n :: nat
  assumes "n > 0" "b > 0" "x mod n = a" "c > 0" "d > 0"
  shows "((x + b)^c * (x + d)^c) mod n = ((a + b)^c * (a + d)^c) mod n"
proof -
  have "((x + b)^c * (x + d)^c) mod n = (((x + b)^c mod n) * ((x + d)^c mod n)) mod n"
    by (metis mod_mult_eq)
  also have "... = (((x mod n) + b)^c * ((x mod n) + d)^c) mod n"
    using assms(3) by (smt (verit) assms(1) assms(2) assms(4) assms(5) mod_add_power_multi mod_mult_eq)
  also have "... = ((a + b)^c * (a + d)^c) mod n"
    by (metis add.commute assms(3))
  finally show ?thesis by auto
qed