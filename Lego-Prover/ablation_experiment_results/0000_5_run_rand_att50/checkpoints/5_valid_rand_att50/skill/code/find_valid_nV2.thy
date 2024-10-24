lemma find_valid_N:
  fixes N :: nat and m :: nat
  assumes "N < 50" and "m < 2"
  shows "N < 50 \<and> m < 2"
proof -
  have "N < 50" using assms(1) by simp
  have "m < 2" using assms(2) by simp
  thus ?thesis 
    by (simp add: \<open>N < 50\<close> \<open>m < 2\<close>)
qed