lemma mod_add_power_generalized:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "x mod n = a"
  shows "((x + b)^c + d) mod n = (((a + b)^c) + d) mod n"
proof -
  have "((x + b)^c + d) mod n = (((x + b)^c) mod n + d mod n) mod n"
    by presburger
  also have "... = (((x mod n) + b)^c + d) mod n"
    by (smt (verit) assms(1) assms(2) assms(3) mod_add_left_eq mod_add_power_extended mod_add_right_eq)
  also have "... = ((a + b)^c + d) mod n"
    using assms(4) by (metis add.commute assms(5))
  finally show ?thesis by auto
qed