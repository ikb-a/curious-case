lemma express_N_mod_m:
  fixes N :: nat and k :: nat and m :: nat
  assumes "N = (m * k) + r" and "r < m"
  shows "N mod m = r"
proof -
  have "N mod m = ((m * k) + r) mod m" using assms by simp
  also have "... = (m * k mod m + r mod m)" by auto
  also have "... = (0 + r)" by (metis add_cancel_right_left assms(2) comm_monoid_add_class.add_0 mod_less mod_mult_self1_is_0)
  finally show "N mod m = r" by simp
qed