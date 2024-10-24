lemma sum_terms_count_extended:
  fixes m n k :: nat
  assumes "m = 91" "n = 19" "k = 1"
  shows "m - n + k = 73"
proof -
  have "m - n + k = 91 - 19 + 1" using assms by simp
  thus ?thesis by simp
qed