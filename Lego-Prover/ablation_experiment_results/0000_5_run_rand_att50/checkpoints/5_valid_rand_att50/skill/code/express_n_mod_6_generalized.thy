lemma express_N_mod_6_generalized:
  fixes N :: nat and m :: nat
  assumes "N = a * m + c" and "a mod b = 0" and "c < b"
  shows "N mod b = c"
proof -
  have "N mod b = (a * m + c) mod b" using assms(1) by simp
  also have "... = (a * m mod b + c mod b)" by (smt (verit) add_cancel_left_left assms(2) assms(3) mod_add_eq mod_less mod_mod_trivial mod_mult_left_eq mod_mult_mult2 mod_self)
  also have "... = (0 + c)" 
    using assms(2) by (metis add_0 add_cancel_left_left assms(3) mod_less mod_mult_cong mod_mult_self1_is_0 mod_self)
  also have "... = c" by simp
  finally show "N mod b = c" by simp
qed