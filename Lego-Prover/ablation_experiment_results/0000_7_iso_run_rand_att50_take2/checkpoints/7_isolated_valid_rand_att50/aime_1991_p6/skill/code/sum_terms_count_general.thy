lemma sum_terms_count_general:
  fixes a b :: nat
  assumes "b \<ge> a"
  shows "b - a + 1 = (card {a .. b})"
proof -
  have "card {a .. b} = b - a + 1" by (metis Suc_diff_le Suc_eq_plus1 assms card_atLeastAtMost)
  thus ?thesis using assms by simp
qed