lemma bounds_on_r:
  fixes r :: real
  assumes "8 \<le> r + 0.57" "r + 0.57 < 8.01"
  shows "7.43 \<le> r \<and> r < 7.44"
proof -
  have "8 - 0.57 \<le> r" using assms(1) by simp
  hence "7.43 \<le> r" by simp
  have "r < 8.01 - 0.57" using assms(2) by simp
  hence "r < 7.44" by simp
  show ?thesis using `7.43 \<le> r` and `r < 7.44` by auto
qed