lemma mod_add_power_general_multi_dim:
  fixes x n a b c d :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "x mod n = a"
  shows "((x + b + d)^c) mod n = ((a + b + d)^c) mod n"
proof -
  have "((x + b + d)^c) mod n = (((x + b) + d)^c) mod n"
    by (metis add.assoc)
  also have "... = ((x mod n + b + d)^c) mod n"
    by (smt (verit) assms(1) assms(3) assms(4) mod_add_left_eq mod_add_power_general_multi)
  also have "... = ((a + b + d)^c) mod n"
    using assms(5) by auto
  finally show ?thesis by (metis \<open>(x + b + d) ^ c mod n = (x mod n + b + d) ^ c mod n\<close> add.commute add.left_commute assms(5))
qed