lemma threshold_for_eight:
  assumes "floor (r + 57 / 100) = 8"
  shows "8 \<le> r + 57 / 100 \<and> r + 57 / 100 < 9"
proof -
  let ?x = "r + 57 / 100"
  have "floor ?x = 8" using assms by simp
  have "8 \<le> ?x" 
  proof -
    have "floor ?x = 8" by (simp add: `floor ?x = 8`)
    thus "8 \<le> ?x" 
      by (metis dual_order.refl numeral_le_floor)
  qed
  have "?x < 9" 
  proof -
    have "floor ?x < 9" by (simp add: `floor ?x = 8`)
    thus "?x < 9" 
      by auto
  qed
  thus "8 \<le> ?x \<and> ?x < 9" by (metis \<open>(8::'a) \<le> r + (57::'a) / (100::'a)\<close>)
qed