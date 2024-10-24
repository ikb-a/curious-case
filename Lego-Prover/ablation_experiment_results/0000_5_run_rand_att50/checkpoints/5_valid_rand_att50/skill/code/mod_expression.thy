lemma mod_expression:
  fixes N :: nat and k :: nat
  assumes "N = m * k + r" and "0 \<le> r" and "r < k"
  shows "N mod k = r"
proof -
  have "N mod k = (m * k + r) mod k" using assms by simp
  also have "... = (m * k mod k + r mod k)" by auto 
  also have "... = (0 + r)" by (metis add_cancel_left_left assms(3) comm_monoid_add_class.add_0 mod_less mod_mult_self2_is_0) 
  finally show ?thesis by simp
qed