lemma express_N_mod_a:
  fixes N :: nat and k :: nat and a :: nat
  assumes "N = b * k + c" and "b > 0" and "c < b"
  shows "N mod b = c"
proof -
  have "N mod b = (b * k + c) mod b" using assms by simp
  also have "... = (b * k mod b + c mod b)" by auto
  also have "... = (0 + c) mod b" by auto
  finally show "N mod b = c" by (metis \<open>(b * k + c) mod b = b * k mod b + c mod b\<close> \<open>b * k mod b + c mod b = (0 + c) mod b\<close> assms(1) assms(3) comm_monoid_add_class.add_0 mod_less mult_delta_right)
qed