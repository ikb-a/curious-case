lemma mod_add_power_multi_dim:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "x mod n = a"
  shows "((x + b + d)^c) mod n = ((a + b + d)^c) mod n"
proof -
  have "((x + b + d) mod n) = ((x mod n) + (b mod n) + (d mod n)) mod n"
    by (smt (verit) mod_add_cong mod_add_eq mod_mod_trivial)
  then have "(x + b + d)^c mod n = ((x mod n) + b + d)^c mod n"
    by (smt (verit) assms(1) assms(3) assms(4) mod_add_left_eq mod_add_power_generalized mod_add_right_eq)
  also have "... = (a + b + d)^c mod n"
    using assms(4) by (metis add.commute assms(5) group_cancel.add1 group_cancel.add2)
  finally show ?thesis by auto
qed