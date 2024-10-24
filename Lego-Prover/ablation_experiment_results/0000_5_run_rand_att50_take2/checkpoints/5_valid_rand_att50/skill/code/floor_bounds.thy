lemma floor_bounds:
  fixes r :: real and k :: real and m :: int
  assumes "m = floor (r + k / 100)"
  shows "m \<le> r + k / 100 \<and> r + k / 100 < m + 1"
proof -
  have "m \<le> r + k / 100" using assms
    by auto
  moreover have "r + k / 100 < m + 1" using assms
    by auto
  ultimately show ?thesis by auto
qed