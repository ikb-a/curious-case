lemma express_N_mod_a:
  fixes N :: nat and k :: nat and a :: nat
  assumes "N = b * k + c" and "a > 0" and "b mod a = 0" and "0 \<le> c \<and> c < a"
  shows "N mod a = c"
proof -
  have "N mod a = (b * k + c) mod a" using assms by simp
  also have "... = (b * k mod a + c mod a)" by (smt (verit) add_cancel_left_left assms(3) assms(4) mod_add_eq mod_less mod_mod_trivial mod_mult_left_eq mod_mult_mult2 mod_self)
  also have "... = (0 + c)" using assms(3) by (smt (verit) \<open>(b * k + c) mod a = b * k mod a + c mod a\<close> add_cancel_right_left assms(4) mod_add_eq mod_less mod_mult_left_eq mod_mult_mult2 mod_self)
  finally show "N mod a = c" by simp
qed