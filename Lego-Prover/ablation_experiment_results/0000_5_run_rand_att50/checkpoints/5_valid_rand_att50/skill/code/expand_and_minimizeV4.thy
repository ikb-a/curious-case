lemma expand_and_minimize:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  let ?A = "(x * y - 1)^2"
  let ?B = "(x + y)^2"
  have "?A \<ge> 0"
    by (simp add: power2_eq_square)
  have "?B \<ge> 0"
    by (simp add: power2_eq_square)
  have "1 \<le> ?A + ?B"
  proof -
    have "0 \<le> ?A" by (simp add: power2_eq_square)
    have "0 \<le> ?B" by (simp add: power2_eq_square)
    hence "0 + 0 \<le> ?A + ?B" by (simp add: add_nonneg_nonneg)
    then show ?thesis by sos
  qed
  thus ?thesis by simp
qed