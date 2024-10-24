lemma congruence_8:
  fixes k :: nat
  shows "\<exists>N. N = 8 * k + 5"
proof -
  let ?N = "8 * k + 5"
  have "?N = 8 * k + 5" by simp
  thus ?thesis by auto
qed