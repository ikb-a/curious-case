lemma mod_congruence_exists:
  fixes k :: nat
  assumes "k mod 8 = 5"
  shows "(\<exists>N. N = 8 * k + 5)"
proof -
  show "\<exists>N. N = 8 * k + 5" by auto
qed