lemma count_terms_generalized:
  fixes a b :: nat
  assumes "a < b"
  shows "card {k. k \<in> {a..b}} = b - a + 1"
proof -
  have "card {k. k \<in> {a..b}} = b - a + 1" 
    by (metis Collect_mem_eq Suc_diff_Suc Suc_eq_plus1 assms card_atLeastAtMost diff_Suc_Suc less_SucI)
  thus ?thesis by simp
qed