lemma express_N_mod:
  fixes N :: nat and k :: nat and b :: nat
  assumes "N = a * k + c" and "b * k + c = N"
  shows "N mod b = c mod b"
proof -
  have "N mod b = (a * k + c) mod b" using assms(1) by simp
  also have "... = (a * k mod b + c mod b)" by (smt (verit) add_cancel_left_left add_right_imp_eq assms(1) assms(2) mod_mult_self1_is_0 mod_mult_self4)
  also have "... = (0 + c mod b)" 
    using assms(2) by (smt (verit) \<open>(a * k + c) mod b = a * k mod b + c mod b\<close> add_cancel_left_left add_right_imp_eq assms(1) mod_add_eq mod_add_right_eq mod_mod_trivial mod_mult_left_eq mod_mult_mult2 mod_self)
  also have "... = c mod b" by simp
  finally show "N mod b = c mod b" by simp
qed