lemma expand_and_minimize:
  fixes x y :: real
  shows "1 \<le> (x * y - 1)^2 + (x + y)^2"
proof -
  have "1 \<le> (x * y - 1)^2 + (x + y)^2"
  proof -
    let ?z = "(x * y - 1)"
    let ?s = "(x + y)"
    have "1 \<le> ?z^2 + ?s^2"
      by sos
    have "?z^2 \<ge> 0" by (simp add: power2_eq_square)
    have "?s^2 \<ge> 0" by (simp add: power2_eq_square)
    have "1 \<le> ?z^2 + ?s^2"
      by sos
    thus ?thesis
      by (simp add: power2_eq_square)
  qed
  thus ?thesis by auto
qed