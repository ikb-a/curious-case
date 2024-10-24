lemma threshold_for_eight:
  assumes "floor (r + 57 / 100) = 8"
  shows "8 \<le> r + 57 / 100 \<and> r + 57 / 100 < 9"
proof -
  have "8 \<le> r + 57 / 100" 
  proof -
    have "floor (r + 57 / 100) = 8" by (simp add: assms)
    thus "8 \<le> r + 57 / 100" 
      by (metis dual_order.refl numeral_le_floor)
  qed
  moreover have "r + 57 / 100 < 9" 
  proof -
    have "floor (r + 57 / 100) < 9" 
      by (simp add: assms)
    thus "r + 57 / 100 < 9" 
      by auto
  qed
  ultimately show ?thesis by auto
qed