lemma express_N_mod:
  fixes N :: nat and k :: nat and b :: nat
  assumes "b > 0" "N = b * k + r" "r < b"
  shows "N mod b = r"
proof -
  have "N mod b = (b * k + r) mod b" using assms(2) by simp
  also have "... = (b * k mod b + r mod b)" by auto
  also have "... = (0 + r)" by (metis add_0 add_cancel_left_left assms(3) mod_less mod_mult_self1_is_0)
  finally show "N mod b = r" by simp
qed