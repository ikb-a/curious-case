lemma congruence_expression:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 8 = 5"
proof -
  have "N = 8 * k + 5" using assms by simp
  then have "N mod 8 = (8 * k + 5) mod 8" by simp
  also have "... = (8 * k mod 8 + 5 mod 8)" by auto
  also have "... = (0 + 5 mod 8)" by (simp add: mod_mult_self2)
  also have "... = 5" by (simp add: mod_0)
  finally show "N mod 8 = 5" .
qed