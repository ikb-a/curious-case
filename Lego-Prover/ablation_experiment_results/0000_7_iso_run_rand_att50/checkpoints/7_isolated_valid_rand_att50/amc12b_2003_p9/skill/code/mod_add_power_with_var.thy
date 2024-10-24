lemma mod_add_power_with_var:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "x mod n = a"
  shows "((x + b)^c + d) mod n = ((a + b)^c + d) mod n"
proof -
  have "((x + b)^c + d) mod n = (((x + b)^c mod n) + d) mod n"
    by presburger
  also have "... = ((a + b)^c + d) mod n"
    using mod_add_power_general[of x n a b c] by (smt (verit) assms(1) assms(2) assms(3) assms(5) mod_add_left_eq mod_add_power_general)
  finally show ?thesis by auto
qed