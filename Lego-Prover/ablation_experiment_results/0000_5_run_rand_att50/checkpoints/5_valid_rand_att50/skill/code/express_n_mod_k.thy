lemma express_N_mod_k:
  fixes N :: nat and k :: nat and r :: nat
  assumes "r < k"
  and "N = k * m + r"
  shows "N mod k = r"
proof -
  have "N mod k = (k * m + r) mod k" using assms by simp
  also have "... = (k * m mod k + r mod k)" by auto
  also have "... = (0 + r) mod k" by (simp add: mod_mult_self2)
  finally show "N mod k = r" by (metis \<open>(k * m + r) mod k = k * m mod k + r mod k\<close> \<open>k * m mod k + r mod k = (0 + r) mod k\<close> assms(1) assms(2) comm_monoid_add_class.add_0 mod_less mult_delta_right)
qed