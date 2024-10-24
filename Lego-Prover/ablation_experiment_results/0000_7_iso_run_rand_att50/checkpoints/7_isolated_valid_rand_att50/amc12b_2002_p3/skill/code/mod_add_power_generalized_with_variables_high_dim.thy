lemma mod_add_power_generalized_with_variables_high_dim:
  fixes x y n a b c :: nat
  assumes "n > 0" "b > 0" "c > 0" "x mod n = a" 
  shows "((x + b + y)^c) mod n = ((a + b + y)^c) mod n"
proof -
  have "((x + b + y)^c) mod n = (((x + y) mod n + b) mod n)^c mod n"
    by (metis add.commute group_cancel.add1 group_cancel.add2 mod_add_left_eq power_mod)
  also have "... = ((a + b + y) mod n)^c mod n"
    using assms(4) by (smt (verit) calculation mod_add_cong mod_add_left_eq power_mod)
  also have "... = (a + b + y)^c mod n"
    by (metis power_mod)
  finally show ?thesis by auto
qed