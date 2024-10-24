lemma expand_and_minimize:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "1 \<le> (x * y - 1)^2 + (x + y)^2" 
  proof -
    have "0 \<le> (x * y - 1)^2" by auto
    hence "0 \<le> (x * y - 1)^2 + (x + y)^2" by (simp add: add_nonneg_nonneg)
    then have "(x + y)^2 \<ge> 0" by auto
    let ?A = "(x * y - 1)^2"
    let ?B = "(x + y)^2"
    have "?A + ?B = (x * y)^2 - 2 * (x * y) + 1 + x^2 + 2 * x * y + y^2"
      by sos
    have "x^2 + 2 * x * y + y^2 = (x + y)^2" 
      by sos
    thus ?thesis
      by sos
  qed
  thus ?thesis by simp
qed