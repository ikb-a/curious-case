lemma substitute_congruence:
  fixes k :: nat
  assumes "N = 8 * k + 5"
  shows "N mod 8 = 5"
proof -
  have "N = 8 * k + 5" using assms by simp
  then show "N mod 8 = 5" by (simp add: mod_add_eq)
qed