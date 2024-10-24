lemma floor_bounds:
  fixes r :: real
  shows "floor r \<le> r \<and> r < floor r + 1"
proof -
  let ?n = "floor r"
  have "r < ?n + 1" 
  proof -
    have "r < ?n + 1" by auto
    thus "r < ?n + 1" by simp
  qed
  moreover have "?n \<le> r" 
  proof -
    have "?n = floor r" by simp
    thus "?n \<le> r" by auto
  qed
  ultimately show ?thesis by auto
qed