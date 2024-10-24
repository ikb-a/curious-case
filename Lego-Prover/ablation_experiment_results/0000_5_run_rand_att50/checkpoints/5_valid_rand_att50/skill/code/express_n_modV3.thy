lemma express_N_mod:
  fixes N :: nat and k :: nat and r :: nat
  assumes "N = k * r + d" and "d < r"
  shows "N mod r = d"
proof -
  have "N mod r = (k * r + d) mod r" using assms by simp
  also have "... = (k * r mod r + d mod r)" by auto
  also have "... = (0 + d)" by (metis add_cancel_right_left assms(2) comm_monoid_add_class.add_0 mod_less mod_mult_self2_is_0)
  finally show "N mod r = d" by simp
qed