lemma floor_bounds:
  fixes r :: real
  shows "floor r \<le> r \<and> r < floor r + 1"
proof -
  have "floor r = floor r" by simp
  hence "floor r \<le> r" by auto
  moreover have "r < floor r + 1" 
  proof -
    have "r < floor r + 1" by auto
    thus "r < floor r + 1" by simp
  qed
  ultimately show ?thesis by auto
qed