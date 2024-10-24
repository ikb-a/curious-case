lemma congruence_expression:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 8 = 5"
proof -
  have "N = 8 * k + 5" using assms by simp
  then show "N mod 8 = 5" 
  proof -
    have "N mod 8 = (8 * k + 5) mod 8" by (metis assms)
    also have "... = (8 * k mod 8 + 5 mod 8)" by auto
    then have "8 * k mod 8 = 0" by (simp add: mod_mult_self2)
    hence "N mod 8 = (0 + 5 mod 8)" by (metis \<open>(8 * k + 5) mod 8 = 8 * k mod 8 + 5 mod 8\<close> add_cancel_left_left calculation mod_mult_self4)
    thus "N mod 8 = 5" by simp
  qed
qed