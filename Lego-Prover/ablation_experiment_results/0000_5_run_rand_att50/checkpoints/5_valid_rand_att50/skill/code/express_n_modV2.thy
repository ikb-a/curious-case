lemma express_N_mod:
  fixes N :: nat and k :: nat
  assumes "N = a * k + b" and "a > 0" and "0 \<le> b \<and> b < a"
  shows "N mod a = b"
proof -
  have "N mod a = (a * k + b) mod a" using assms by simp
  also have "... = (a * k mod a + b mod a)" by auto
  also have "... = (0 + b)" by (metis add_cancel_right_left assms(3) mod_less mod_mult_self1_is_0 plus_nat.add_0)
  finally show "N mod a = b" by simp
qed