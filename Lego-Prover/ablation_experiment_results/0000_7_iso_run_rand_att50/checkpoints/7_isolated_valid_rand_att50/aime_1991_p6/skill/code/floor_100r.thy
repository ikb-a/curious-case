lemma floor_100r:
  fixes r :: real
  assumes "7.43 \<le> r \<and> r < 8.09"
  shows "743 \<le> floor (100 * r) \<and> floor (100 * r) < 809"
proof -
  have "100 * 7.43 \<le> 100 * r" using assms by simp
  hence "743 \<le> 100 * r" by (simp add: mult_left_mono)
  have "100 * r < 100 * 8.09" using assms by simp
  hence "100 * r < 809" by (simp add: mult_left_mono)
  show ?thesis
  proof -
    have "743 \<le> floor (100 * r)" 
      using `743 \<le> 100 * r` by auto
    moreover
    have "floor (100 * r) < 809"
      using `100 * r < 809` by auto
    ultimately show ?thesis by auto
  qed
qed