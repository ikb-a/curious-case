lemma threshold_for_eight:
  assumes "floor (r + 57 / 100) = 8"
  shows "8 \<le> r + 57 / 100 \<and> r + 57 / 100 < 9"
proof -
  have "8 \<le> r + 57 / 100" 
  proof -
    have "floor (r + 57 / 100) = 8" 
      using assms by simp
    then show "8 \<le> r + 57 / 100" 
      by (metis dual_order.refl numeral_le_floor)
  qed
  have "r + 57 / 100 < 9" 
  proof -
    have "floor (r + 57 / 100) < 9" 
      using assms by simp
    then show "r + 57 / 100 < 9" 
      by auto
  qed
  thus ?thesis by (metis \<open>(8::'a) \<le> r + (57::'a) / (100::'a)\<close>)
qed