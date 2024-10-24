lemma congruence_expression:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 8 = 5"
proof -
  have "N mod 8 = (8 * k + 5) mod 8" using assms by simp
  also have "... = (8 * k mod 8 + 5 mod 8)" by auto
  then have "N mod 8 = (0 + 5 mod 8)" by (metis add_cancel_right_left calculation mod_mult_self4)
  thus "N mod 8 = 5" by simp
qed