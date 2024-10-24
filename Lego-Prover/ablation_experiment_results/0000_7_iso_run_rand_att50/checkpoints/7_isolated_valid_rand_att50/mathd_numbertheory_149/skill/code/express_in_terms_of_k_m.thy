lemma express_in_terms_of_k_m:
  fixes k m :: nat
  shows "\<exists>N. N = 24 * m + 21"
proof -
  let ?N = "24 * m + 21"
  have "?N = 24 * m + 21" by simp
  thus ?thesis by auto
qed