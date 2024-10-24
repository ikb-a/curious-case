lemma mod_add_power_extended_generalized:
  fixes x n a b c d e :: nat
  assumes "n > 0" "b > 0" "c > 0" "d > 0" "e > 0" "x mod n = a" "d mod n = b"
  shows "((x + b)^c + d + e) mod n = ((a + b)^c + b + e) mod n"
proof -
  have "((x + b)^c + d + e) mod n = (((x + b)^c mod n) + (d + e) mod n) mod n"
    by (metis add.commute group_cancel.add1 group_cancel.add2 mod_add_eq)
  also have "... = ((x + b)^c mod n + (b + e)) mod n"
    using assms(6) by (smt (verit) assms(7) mod_add_left_eq mod_add_right_eq)
  also have "... = ((x mod n + b)^c mod n + (b + e)) mod n"
    using assms(5) by (smt (verit) mod_add_cong mod_add_left_eq power_mod)
  also have "... = ((a + b)^c mod n + (b + e)) mod n"
    using assms(5) by (metis add.commute assms(6) group_cancel.add2 mod_add_cong mod_add_left_eq mod_add_right_eq)
  finally show ?thesis by (smt (verit) \<open>((x + b) ^ c + d + e) mod n = ((x + b) ^ c mod n + (d + e) mod n) mod n\<close> \<open>((x + b) ^ c mod n + (b + e)) mod n = ((x mod n + b) ^ c mod n + (b + e)) mod n\<close> \<open>((x + b) ^ c mod n + (d + e) mod n) mod n = ((x + b) ^ c mod n + (b + e)) mod n\<close> assms(6) group_cancel.add1 mod_add_left_eq)
qed