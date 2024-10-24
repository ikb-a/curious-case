lemma floor_bounds:
  fixes r :: real and k :: int and m :: int
  assumes "m = floor (r + k / 100)"
  shows "m \<le> r + k / 100 \<and> r + k / 100 < m + 1"
proof -
  have "m \<le> r + k / 100" using assms
  proof -
    have "m = floor (r + k / 100)" by (simp add: assms)
    thus "m \<le> r + k / 100" 
      by auto
  qed
  moreover have "r + k / 100 < m + 1" using assms
  proof -
    have "r + k / 100 < floor (r + k / 100) + 1" 
      by auto
    thus "r + k / 100 < m + 1" by (simp add: assms)
  qed
  ultimately show ?thesis by auto
qed