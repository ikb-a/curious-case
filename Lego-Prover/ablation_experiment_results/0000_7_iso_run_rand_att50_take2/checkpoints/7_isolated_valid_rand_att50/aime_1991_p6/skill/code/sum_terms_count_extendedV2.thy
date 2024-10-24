lemma sum_terms_count_extended:
  fixes n d :: nat
  assumes "n = d - 19 + 1" and "d > 19"
  shows "n = d - 18"
proof -
  have "d - 19 + 1 = d - 18" using assms by simp
  then show ?thesis by (metis assms(1) inc.simps(1))
qed