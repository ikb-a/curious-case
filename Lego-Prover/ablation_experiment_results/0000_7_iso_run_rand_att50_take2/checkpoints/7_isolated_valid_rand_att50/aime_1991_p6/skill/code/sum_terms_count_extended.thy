lemma sum_terms_count_extended:
  fixes n :: nat and m :: nat
  assumes "n = m - 19 + 1" and "m > 19"
  shows "n = m - 18"
proof -
  have "n = m - 19 + 1" by (simp add: assms)
  then show ?thesis by (metis Suc_diff_Suc Suc_eq_plus1 Suc_lessD assms(2) diff_Suc_1 eval_nat_numeral(3) numeral_One)
qed