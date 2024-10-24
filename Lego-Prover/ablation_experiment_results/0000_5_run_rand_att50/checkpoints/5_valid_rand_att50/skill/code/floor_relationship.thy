lemma floor_relationship:
  fixes r :: real
  assumes "n = floor r"
  shows "n \<le> r \<and> r < n + 1"
proof -
  have "n \<le> r" using assms
    by auto
  have "r < n + 1" using assms
  proof -
    have "n \<le> r" using assms by auto
    have "r < floor r + 1" using assms by auto
    thus "r < n + 1" by (simp add: assms)
  qed
  thus ?thesis by (simp add: `n \<le> r` `r < n + 1`)
qed