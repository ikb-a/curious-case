lemma congruence_mod_8:
  fixes k :: nat
  assumes "0 \<le> k"
  shows "k mod 8 = 5 \<Longrightarrow> (\<exists>N. N = 8 * k + 5)"
proof -
  assume "k mod 8 = 5"
  then show "\<exists>N. N = 8 * k + 5" by auto
qed